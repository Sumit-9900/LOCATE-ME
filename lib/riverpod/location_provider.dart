import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hive/hive.dart';
import 'package:locate_me/models/locationdata_model.dart';
import 'package:locate_me/models/locationstate_model.dart';
import 'package:locate_me/riverpod/hive_box.dart';
import 'package:locate_me/services/messages.dart';
import 'package:locate_me/services/textstyle.dart';

class LocationNotifier extends StateNotifier<LocationState> {
  LocationNotifier(this.locationBox)
      : super(LocationState(
          startLocation: '',
          endLocation: '',
          totalDistanceInKm: 0.0,
          isVisible: false,
        ));
  final Box<LocationData> locationBox;

  Position? previousPosition;
  StreamSubscription<Position>? positionStream;
  double? totalDistanceInMeter;
  double? totalDistanceInKm;
  String? startLoc;
  String? endLoc;
  bool? isVisible;

  @override
  void dispose() {
    stopListener();
    super.dispose();
  }

  Future<void> fetchPosition() async {
    try {
      bool serviceEnabled;
      LocationPermission permission;

      const LocationSettings locationSettings = LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 1000,
      );

      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        errorMssg('Location services are disabled!');
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          errorMssg('Location permissions are denied!');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        errorMssg('Location permissions are denied forever!');
      }
      previousPosition = await Geolocator.getCurrentPosition();
      positionStream =
          Geolocator.getPositionStream(locationSettings: locationSettings)
              .listen(
        (Position? position) {
          if (position != null) {
            handlePosition(position);
          } else {
            errorMssg('No position!');
          }
        },
      );
      successMssg('Location listening started!');
      state = state.copyWith(isVisible: false);
    } catch (e) {
      throw Exception(e);
    }
  }

  void handlePosition(Position position) {
    if (previousPosition != null) {
      final distance = dist(previousPosition!.latitude,
          previousPosition!.longitude, position.latitude, position.longitude);
      addData(
          '${previousPosition!.latitude.toStringAsFixed(2)}, ${previousPosition!.longitude.toStringAsFixed(2)}',
          '${position.latitude.toStringAsFixed(2)}, ${position.longitude.toStringAsFixed(2)}',
          distance);
      previousPosition = position;
    }
  }

  double dist(double startLatitude, double startLongitude, double endLatitude,
      double endLongitude) {
    return Geolocator.distanceBetween(
        startLatitude, startLongitude, endLatitude, endLongitude);
  }

  void addData(String previousLoc, String currentLoc, double distance) {
    locationBox.add(LocationData(
        previousLoc: previousLoc, currentLoc: currentLoc, distance: distance));
    log(LocationData(
            previousLoc: previousLoc,
            currentLoc: currentLoc,
            distance: distance)
        .toString());
  }

  void getData() {
    startLoc =
        locationBox.getAt(0) == null ? '' : locationBox.getAt(0)!.previousLoc;
    endLoc = locationBox.getAt(locationBox.values.length - 1) == null
        ? ''
        : locationBox.getAt(locationBox.values.length - 1)!.currentLoc;
    totalDistanceInMeter = 0;
    for (int i = 0; i < locationBox.values.length; i++) {
      totalDistanceInMeter =
          totalDistanceInMeter! + locationBox.getAt(i)!.distance;
    }
    totalDistanceInKm =
        totalDistanceInMeter == null ? 0 : totalDistanceInMeter! / 1000;
    isVisible = true;
    log('$startLoc, $endLoc, $totalDistanceInKm');
    state = state.copyWith(
      startLocation: startLoc!,
      endLocation: endLoc!,
      totalDistanceInKm: totalDistanceInKm!,
      isVisible: isVisible!,
    );
  }

  void stopListener() {
    positionStream!.cancel();
    getData();
    locationBox.clear();
    errorMssg('Location listening stopped!');
  }

  Future<bool> onWillPop(BuildContext context) async {
    return await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: Colors.greenAccent.shade200,
            title: Text(
              'Confirm Exit',
              style: Style.style7,
            ),
            content: Text(
              'Do you want to exit?',
              style: Style.style6,
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: Text(
                  'No',
                  style: Style.style6,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: Text(
                  'Yes',
                  style: Style.style6,
                ),
              )
            ],
          ),
        ) ??
        false;
  }
}

final locationNotifierProvider =
    StateNotifierProvider<LocationNotifier, LocationState>((ref) {
  final locationBox = ref.watch(locationBoxProvider);
  return LocationNotifier(locationBox);
});

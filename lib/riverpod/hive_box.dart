import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:locate_me/models/locationdata_model.dart';
import 'package:locate_me/models/user_model.dart';

final userBoxProvider = Provider<Box<User>>((ref) {
  return Hive.box<User>('users');
});

final locationBoxProvider = Provider<Box<LocationData>>((ref) {
  return Hive.box<LocationData>('location_data');
});

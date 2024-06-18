import 'package:hive/hive.dart';

part 'locationdata_model.g.dart';

@HiveType(typeId: 1)
class LocationData extends HiveObject {
  LocationData({
    required this.previousLoc,
    required this.currentLoc,
    required this.distance,
  });

  @HiveField(2)
  final String previousLoc;

  @HiveField(3)
  final String currentLoc;

  @HiveField(4)
  final double distance;

  @override
  String toString() {
    return 'LocationData(previousLoc: $previousLoc, currentLoc: $currentLoc, distance: $distance)';
  }
}

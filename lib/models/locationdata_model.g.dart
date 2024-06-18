// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locationdata_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocationDataAdapter extends TypeAdapter<LocationData> {
  @override
  final int typeId = 1;

  @override
  LocationData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocationData(
      previousLoc: fields[2] as String,
      currentLoc: fields[3] as String,
      distance: fields[4] as double,
    );
  }

  @override
  void write(BinaryWriter writer, LocationData obj) {
    writer
      ..writeByte(3)
      ..writeByte(2)
      ..write(obj.previousLoc)
      ..writeByte(3)
      ..write(obj.currentLoc)
      ..writeByte(4)
      ..write(obj.distance);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocationDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

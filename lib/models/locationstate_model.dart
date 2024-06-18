class LocationState {
  LocationState({
    required this.startLocation,
    required this.endLocation,
    required this.totalDistanceInKm,
    required this.isVisible,
  });
  final String startLocation;
  final String endLocation;
  final double totalDistanceInKm;
  bool isVisible;

  LocationState copyWith({
    String? startLocation,
    String? endLocation,
    double? totalDistanceInKm,
    bool? isVisible,
  }) {
    return LocationState(
      startLocation: startLocation ?? this.startLocation,
      endLocation: endLocation ?? this.endLocation,
      totalDistanceInKm: totalDistanceInKm ?? this.totalDistanceInKm,
      isVisible: isVisible ?? this.isVisible,
    );
  }
}

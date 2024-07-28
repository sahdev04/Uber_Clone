import 'package:json_annotation/json_annotation.dart';

import 'driver_model.dart';

part 'ride_request_model.g.dart';

@JsonSerializable()
class RideRequestModel {
  String status;
  int rideId;
  DriverModel driver;
  String estimatedArrivalTime;

  RideRequestModel({required this.status, required this.rideId, required this.driver, required this.estimatedArrivalTime});

  factory RideRequestModel.fromJson(Map<String, dynamic> json) => _$RideRequestModelFromJson(json);
  Map<String, dynamic> toJson() => _$RideRequestModelToJson(this);
}

_$RideRequestModelToJson(RideRequestModel rideRequestModel) {
}

_$RideRequestModelFromJson(Map<String, dynamic> json) {
}
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RideRequestModel _$RideRequestModelFromJson(Map<String, dynamic> json) =>
    RideRequestModel(
      status: json['status'] as String,
      rideId: (json['rideId'] as num).toInt(),
      driver: DriverModel.fromJson(json['driver'] as Map<String, dynamic>),
      estimatedArrivalTime: json['estimatedArrivalTime'] as String,
    );

Map<String, dynamic> _$RideRequestModelToJson(RideRequestModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'rideId': instance.rideId,
      'driver': instance.driver,
      'estimatedArrivalTime': instance.estimatedArrivalTime,
    };

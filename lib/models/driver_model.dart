import 'package:json_annotation/json_annotation.dart';

part 'driver_model.g.dart';

@JsonSerializable()
class DriverModel {
  int id;
  String name;
  String carModel;
  double rating;
  Location location;

  DriverModel({required this.id, required this.name, required this.carModel, required this.rating, required this.location});

  factory DriverModel.fromJson(Map<String, dynamic> json) => _$DriverModelFromJson(json);
  Map<String, dynamic> toJson() => _$DriverModelToJson(this);
}

@JsonSerializable()
class Location {
  double latitude;
  double longitude;

  Location({required this.latitude, required this.longitude});

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
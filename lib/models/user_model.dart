import 'package:json_annotation/json_annotation.dart';

import 'driver_model.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  int id;
  String name;
  String email;
  Location location;

  UserModel({required this.id, required this.name, required this.email, required this.location});

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

_$UserModelFromJson(Map<String, dynamic> json) {
}

_$UserModelToJson(UserModel userModel) {
}
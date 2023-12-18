import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response_model.g.dart';

@JsonSerializable()
class ModelResponseModel {
  String? message;
  @JsonKey(name: "data")
  UserData? userData;
  bool? status;
  int? code;
  ModelResponseModel({this.message, this.userData, this.status, this.code});
  factory ModelResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ModelResponseModelFromJson(json);
}

@JsonSerializable()
class UserData {
  String? token;
  @JsonKey(name: "username")
  String? username;
  UserData({this.token, this.username});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

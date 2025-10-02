import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_response_body.g.dart';

@JsonSerializable()
class SignUpResponseBody {
  String? message;
  @JsonKey(name: 'data')
  UserData? userData;
  int? code;
  bool? status;

  SignUpResponseBody({this.message, this.userData, this.code, this.status});
  factory SignUpResponseBody.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseBodyFromJson(json);
}

@JsonSerializable()
class UserData {
  String? token;
  @JsonKey(name: 'username')
  String? userName;
  UserData({this.token, this.userName});
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

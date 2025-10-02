import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_request_body.g.dart';

@JsonSerializable()
class SignUpRequestBody {
  final String name;
  final String password;
  final String email;
  final String phone;
  @JsonKey(name: 'password_confirmation')
  final String confirmPassword;
  final int gender;

  SignUpRequestBody({
    required this.email,
    required this.phone,
    required this.name,
    required this.password,
    required this.confirmPassword,
    required this.gender,
  });

  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
}

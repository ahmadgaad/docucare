import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request_body.g.dart';

@JsonSerializable(createFactory: false)
class RegisterRequestBody {
  final String name;
  final String email;
  final String phone;
  final String password;
  @JsonKey(name: "password_confirmation")
  final String passwordConfirmation;
  final int gender;

  RegisterRequestBody({
    required this.name,
    required this.email,
    required this.phone,
    this.gender = 0,
    required this.password,
    required this.passwordConfirmation,
  });

  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);
}

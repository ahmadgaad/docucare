import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_response.g.dart';

@JsonSerializable(createToJson: false)
class RegisterResponse {
  final String message;
  @JsonKey(name: 'data')
  final User user;
  final bool status;
  final int code;

  RegisterResponse({
    required this.message,
    required this.user,
    required this.status,
    required this.code,
  });

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}

@JsonSerializable(createToJson: false)
class User {
  final String token;
  @JsonKey(name: 'username')
  final String user;

  User({required this.token, required this.user});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

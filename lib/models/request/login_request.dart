import 'dart:convert';

class LoginRequest {
  LoginRequest({
    required this.email_or_mobile,
    required this.password,
  });

  String email_or_mobile;
  String password;

  factory LoginRequest.fromRawJson(String str) =>
      LoginRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginRequest.fromJson(Map<String, dynamic> json) => LoginRequest(
        email_or_mobile: json["email_or_mobile"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email_or_mobile": email_or_mobile,
        "password": password,
      };
}

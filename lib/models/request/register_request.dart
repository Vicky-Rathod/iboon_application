import 'dart:convert';

class RegisterRequest {
  RegisterRequest({
    required this.full_name,
    required this.contactNo,
    required this.user_name,
    required this.email,
    required this.password,
    required this.confirm_password,
  });

  String full_name;
  String contactNo;
  String user_name;
  String email;
  String password;
  String confirm_password;

  factory RegisterRequest.fromRawJson(String str) =>
      RegisterRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      RegisterRequest(
        full_name: json["full_name"],
        contactNo: json["contactNo"],
        user_name: json["user_name"],
        email: json["email"],
        password: json["password"],
        confirm_password: json["confirm_password"],
      );

  Map<String, dynamic> toJson() => {
        "full_name": full_name,
        "contactNo": contactNo,
        "user_name": user_name,
        "email": user_name,
        "confirm_password": confirm_password,
        "password": password,
      };
}

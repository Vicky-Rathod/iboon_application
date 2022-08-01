import 'dart:convert';

class EditProfileRequest {
  EditProfileRequest({
    required this.full_name,
    required this.cmpName,
    required this.contactNo,
    required this.email,
  });

  String full_name;
  String cmpName;
  String contactNo;
  String email;

  factory EditProfileRequest.fromRawJson(String str) =>
      EditProfileRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EditProfileRequest.fromJson(Map<String, dynamic> json) =>
      EditProfileRequest(
        full_name: json["full_name"],
        cmpName: json["cmpName"],
        contactNo: json["contactNo"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
    "full_name": full_name,
    "cmpName": cmpName,
    "contactNo": contactNo,
    "email": email,
  };
}

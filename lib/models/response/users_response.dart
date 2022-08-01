// To parse this JSON data, do
//
//     final usersResponse = usersResponseFromJson(jsonString);

import 'dart:convert';


String profileModelToJson(ProfileModel data) => json.encode(data.toJson());
ProfileModel profileModelFromJson(String str) => ProfileModel.fromJson(json.decode(str));
class ProfileModel {
  ProfileModel({
    int? userId,
    String? fullName,
    String? cmpName,
    String? userName,
    dynamic profileImage,
    int? contactNo,
    int? roleId,
    int? status,
    String? cmpLogo,
    int? cmpId,
    String? password,
    String? deviceId,
    String? deviceType,
    String? fcmToken,
    String? createdBy,
    String? createdTimeDate,
    dynamic updatedBy,
    dynamic updatedTimeDate,
    int? deleteData,
    int? isTrial,
    String? trialDate,}){
    _userId = userId;
    _fullName = fullName;
    _cmpName = cmpName;
    _userName = userName;
    _profileImage = profileImage;
    _contactNo = contactNo;
    _roleId = roleId;
    _status = status;
    _cmpLogo = cmpLogo;
    _cmpId = cmpId;
    _password = password;
    _deviceId = deviceId;
    _deviceType = deviceType;
    _fcmToken = fcmToken;
    _createdBy = createdBy;
    _createdTimeDate = createdTimeDate;
    _updatedBy = updatedBy;
    _updatedTimeDate = updatedTimeDate;
    _deleteData = deleteData;
    _isTrial = isTrial;
    _trialDate = trialDate;
  }

  ProfileModel.fromJson(dynamic json) {
    _userId = json['user_id'];
    _fullName = json['full_name'];
    _cmpName = json['cmpName'];
    _userName = json['user_name'];
    _profileImage = json['profile_image'];
    _contactNo = json['contactNo'];
    _roleId = json['role_id'];
    _status = json['status'];
    _cmpLogo = json['cmp_logo'];
    _cmpId = json['cmp_id'];
    _password = json['password'];
    _deviceId = json['device_id'];
    _deviceType = json['device_type'];
    _fcmToken = json['fcm_token'];
    _createdBy = json['created_by'];
    _createdTimeDate = json['created_time_date'];
    _updatedBy = json['updated_by'];
    _updatedTimeDate = json['updated_time_date'];
    _deleteData = json['delete_data'];
    _isTrial = json['is_trial'];
    _trialDate = json['trial_date'];
  }
  int? _userId;
  String? _fullName;
  String? _cmpName;
  String? _userName;
  dynamic _profileImage;
  int? _contactNo;
  int? _roleId;
  int? _status;
  String? _cmpLogo;
  int? _cmpId;
  String? _password;
  String? _deviceId;
  String? _deviceType;
  String? _fcmToken;
  String? _createdBy;
  String? _createdTimeDate;
  dynamic _updatedBy;
  dynamic _updatedTimeDate;
  int? _deleteData;
  int? _isTrial;
  String? _trialDate;
  ProfileModel copyWith({  int? userId,
    String? fullName,
    String? cmpName,
    String? userName,
    dynamic profileImage,
    int? contactNo,
    int? roleId,
    int? status,
    String? cmpLogo,
    int? cmpId,
    String? password,
    String? deviceId,
    String? deviceType,
    String? fcmToken,
    String? createdBy,
    String? createdTimeDate,
    dynamic updatedBy,
    dynamic updatedTimeDate,
    int? deleteData,
    int? isTrial,
    String? trialDate,
  }) => ProfileModel(  userId: userId ?? _userId,
    fullName: fullName ?? _fullName,
    cmpName: cmpName ?? _cmpName,
    userName: userName ?? _userName,
    profileImage: profileImage ?? _profileImage,
    contactNo: contactNo ?? _contactNo,
    roleId: roleId ?? _roleId,
    status: status ?? _status,
    cmpLogo: cmpLogo ?? _cmpLogo,
    cmpId: cmpId ?? _cmpId,
    password: password ?? _password,
    deviceId: deviceId ?? _deviceId,
    deviceType: deviceType ?? _deviceType,
    fcmToken: fcmToken ?? _fcmToken,
    createdBy: createdBy ?? _createdBy,
    createdTimeDate: createdTimeDate ?? _createdTimeDate,
    updatedBy: updatedBy ?? _updatedBy,
    updatedTimeDate: updatedTimeDate ?? _updatedTimeDate,
    deleteData: deleteData ?? _deleteData,
    isTrial: isTrial ?? _isTrial,
    trialDate: trialDate ?? _trialDate,
  );
  int? get userId => _userId;
  String? get fullName => _fullName;
  String? get cmpName => _cmpName;
  String? get userName => _userName;
  dynamic get profileImage => _profileImage;
  int? get contactNo => _contactNo;
  int? get roleId => _roleId;
  int? get status => _status;
  String? get cmpLogo => _cmpLogo;
  int? get cmpId => _cmpId;
  String? get password => _password;
  String? get deviceId => _deviceId;
  String? get deviceType => _deviceType;
  String? get fcmToken => _fcmToken;
  String? get createdBy => _createdBy;
  String? get createdTimeDate => _createdTimeDate;
  dynamic get updatedBy => _updatedBy;
  dynamic get updatedTimeDate => _updatedTimeDate;
  int? get deleteData => _deleteData;
  int? get isTrial => _isTrial;
  String? get trialDate => _trialDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = _userId;
    map['full_name'] = _fullName;
    map['cmpName'] = _cmpName;
    map['user_name'] = _userName;
    map['profile_image'] = _profileImage;
    map['contactNo'] = _contactNo;
    map['role_id'] = _roleId;
    map['status'] = _status;
    map['cmp_logo'] = _cmpLogo;
    map['cmp_id'] = _cmpId;
    map['password'] = _password;
    map['device_id'] = _deviceId;
    map['device_type'] = _deviceType;
    map['fcm_token'] = _fcmToken;
    map['created_by'] = _createdBy;
    map['created_time_date'] = _createdTimeDate;
    map['updated_by'] = _updatedBy;
    map['updated_time_date'] = _updatedTimeDate;
    map['delete_data'] = _deleteData;
    map['is_trial'] = _isTrial;
    map['trial_date'] = _trialDate;
    return map;
  }
  factory ProfileModel.fromRawJson(String str) => ProfileModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());


}

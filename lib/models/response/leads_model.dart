import 'dart:convert';
/// status : true
/// message : "Lead Record Listed"
/// data : {"lead":[{"customer_id":1,"cmp_id":3,"cmp_name":"iboon1","contact_name":"nikul","designation":"test","mobile_no":9876543211,"mobile_no2":9876543212,"email":"nikul@gmail.com","website":"string","address":"nikol","address2":"nikol1","city":"patan","state":"gujarat","country":"india","pincode":654356,"note":"","status":1,"promotion_id":5,"referral_id":1,"followDate":"2022-06-07","dob":null,"doa":null,"user_id":3,"assign_user_id":3,"product_id":2,"service_id":1,"created_by":"practical","created_time_date":"2022-06-03 17:27:33","updated_by":null,"updated_time_date":"2022-06-03 05:39:12","delete_data":1,"app_user_id":null},{"customer_id":2,"cmp_id":3,"cmp_name":"test1","contact_name":"niraj","designation":"test1","mobile_no":9876543213,"mobile_no2":9876543214,"email":"niraj@gmail.com","website":"www.test1.com","address":"nikol","address2":"nikol1","city":"patan","state":"gujarat","country":"india","pincode":655356,"note":"good","status":1,"promotion_id":5,"referral_id":2,"followDate":"2022-06-05","dob":null,"doa":null,"user_id":3,"assign_user_id":3,"product_id":1,"service_id":2,"created_by":"practical","created_time_date":"2022-06-03 17:39:08","updated_by":null,"updated_time_date":"2022-06-03 05:09:08","delete_data":1,"app_user_id":null},{"customer_id":3,"cmp_id":3,"cmp_name":"test2","contact_name":"meet","designation":"test1","mobile_no":9876543215,"mobile_no2":9876543216,"email":"meet@gmail.com","website":"www.test2.com","address":"nikol","address2":"nikol1","city":"patan","state":"gujarat","country":"india","pincode":655386,"note":"good","status":2,"promotion_id":1,"referral_id":2,"followDate":"2022-06-03","dob":null,"doa":null,"user_id":3,"assign_user_id":3,"product_id":2,"service_id":1,"created_by":"practical","created_time_date":"2022-06-03 17:41:45","updated_by":null,"updated_time_date":"2022-06-03 05:32:21","delete_data":1,"app_user_id":null},{"customer_id":4,"cmp_id":3,"cmp_name":"test3","contact_name":"neel","designation":"test3","mobile_no":9876543217,"mobile_no2":9876543219,"email":"neel@gmail.com","website":"www.test3.com","address":"nikol","address2":"nikol1","city":"patan","state":"gujarat","country":"india","pincode":655386,"note":"good","status":3,"promotion_id":1,"referral_id":2,"followDate":"2022-06-04","dob":null,"doa":null,"user_id":3,"assign_user_id":3,"product_id":3,"service_id":4,"created_by":"practical","created_time_date":"2022-06-03 17:43:42","updated_by":null,"updated_time_date":"2022-06-03 05:37:49","delete_data":1,"app_user_id":null},{"customer_id":5,"cmp_id":3,"cmp_name":"test4","contact_name":"kena","designation":"test4","mobile_no":9876543220,"mobile_no2":9876543221,"email":"kena@gmail.com","website":"www.test4.com","address":"nikol","address2":"nikol1","city":"patan","state":"gujarat","country":"india","pincode":655386,"note":"good","status":4,"promotion_id":1,"referral_id":2,"followDate":"2022-06-09","dob":null,"doa":null,"user_id":3,"assign_user_id":3,"product_id":3,"service_id":1,"created_by":"practical","created_time_date":"2022-06-03 17:45:29","updated_by":null,"updated_time_date":"2022-06-03 05:39:34","delete_data":1,"app_user_id":null},{"customer_id":6,"cmp_id":3,"cmp_name":"test5","contact_name":"nisha","designation":"test5","mobile_no":9876543221,"mobile_no2":9876543222,"email":"nisha@gmail.com","website":"www.test5.com","address":"nikol","address2":"nikol1","city":"patan","state":"gujarat","country":"india","pincode":655386,"note":"good","status":5,"promotion_id":2,"referral_id":2,"followDate":"2022-06-06","dob":null,"doa":null,"user_id":3,"assign_user_id":3,"product_id":3,"service_id":4,"created_by":"practical","created_time_date":"2022-06-03 17:58:12","updated_by":null,"updated_time_date":"2022-06-03 05:38:32","delete_data":1,"app_user_id":null},{"customer_id":7,"cmp_id":3,"cmp_name":"test6","contact_name":"meera","designation":"test6","mobile_no":9876543223,"mobile_no2":9876543224,"email":"meera@gmail.com","website":"www.test6.com","address":"bopal","address2":"bopal","city":"mehsana","state":"gujarat","country":"india","pincode":659386,"note":"good","status":6,"promotion_id":1,"referral_id":1,"followDate":"2022-06-08","dob":null,"doa":null,"user_id":3,"assign_user_id":3,"product_id":3,"service_id":2,"created_by":"practical","created_time_date":"2022-06-03 18:07:19","updated_by":null,"updated_time_date":"2022-06-03 05:39:41","delete_data":1,"app_user_id":null},{"customer_id":8,"cmp_id":3,"cmp_name":"test7","contact_name":"vipul","designation":"test7","mobile_no":9876543225,"mobile_no2":9876543226,"email":"vipul@gmail.com","website":"www.test7.com","address":"gota","address2":"gota","city":"ahmedabad","state":"gujarat","country":"india","pincode":659386,"note":"good","status":6,"promotion_id":2,"referral_id":1,"followDate":"2022-06-11","dob":null,"doa":null,"user_id":3,"assign_user_id":3,"product_id":3,"service_id":4,"created_by":"practical","created_time_date":"2022-06-03 18:32:18","updated_by":null,"updated_time_date":"2022-06-03 06:02:18","delete_data":1,"app_user_id":null},{"customer_id":9,"cmp_id":3,"cmp_name":"test8","contact_name":"karan","designation":"test8","mobile_no":9876543227,"mobile_no2":9876543228,"email":"karan@gmail.com","website":"www.test8.com","address":"gota","address2":"gota","city":"ahmedabad","state":"gujarat","country":"india","pincode":659776,"note":"good","status":6,"promotion_id":2,"referral_id":1,"followDate":"2022-06-21","dob":null,"doa":null,"user_id":3,"assign_user_id":3,"product_id":2,"service_id":2,"created_by":"practical","created_time_date":"2022-06-03 18:33:42","updated_by":null,"updated_time_date":"2022-06-03 06:03:42","delete_data":1,"app_user_id":null},{"customer_id":10,"cmp_id":3,"cmp_name":"test9","contact_name":"ketul","designation":"test9","mobile_no":9876543229,"mobile_no2":9876543230,"email":"ketul@gmail.com","website":"www.test9.com","address":"gota","address2":"gota","city":"ahmedabad","state":"gujarat","country":"india","pincode":659776,"note":"good","status":3,"promotion_id":2,"referral_id":1,"followDate":"2022-06-25","dob":null,"doa":null,"user_id":3,"assign_user_id":3,"product_id":1,"service_id":2,"created_by":"practical","created_time_date":"2022-06-03 18:35:12","updated_by":null,"updated_time_date":"2022-06-03 06:05:12","delete_data":1,"app_user_id":null}]}

LeadsModel leadsModelFromJson(String str) => LeadsModel.fromJson(json.decode(str));
String leadsModelToJson(LeadsModel data) => json.encode(data.toJson());
class LeadsModel {
  LeadsModel({
      bool? status, 
      String? message, 
      Data? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  LeadsModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
LeadsModel copyWith({  bool? status,
  String? message,
  Data? data,
}) => LeadsModel(  status: status ?? _status,
  message: message ?? _message,
  data: data ?? _data,
);
  bool? get status => _status;
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// lead : [{"customer_id":1,"cmp_id":3,"cmp_name":"iboon1","contact_name":"nikul","designation":"test","mobile_no":9876543211,"mobile_no2":9876543212,"email":"nikul@gmail.com","website":"string","address":"nikol","address2":"nikol1","city":"patan","state":"gujarat","country":"india","pincode":654356,"note":"","status":1,"promotion_id":5,"referral_id":1,"followDate":"2022-06-07","dob":null,"doa":null,"user_id":3,"assign_user_id":3,"product_id":2,"service_id":1,"created_by":"practical","created_time_date":"2022-06-03 17:27:33","updated_by":null,"updated_time_date":"2022-06-03 05:39:12","delete_data":1,"app_user_id":null},{"customer_id":2,"cmp_id":3,"cmp_name":"test1","contact_name":"niraj","designation":"test1","mobile_no":9876543213,"mobile_no2":9876543214,"email":"niraj@gmail.com","website":"www.test1.com","address":"nikol","address2":"nikol1","city":"patan","state":"gujarat","country":"india","pincode":655356,"note":"good","status":1,"promotion_id":5,"referral_id":2,"followDate":"2022-06-05","dob":null,"doa":null,"user_id":3,"assign_user_id":3,"product_id":1,"service_id":2,"created_by":"practical","created_time_date":"2022-06-03 17:39:08","updated_by":null,"updated_time_date":"2022-06-03 05:09:08","delete_data":1,"app_user_id":null},{"customer_id":3,"cmp_id":3,"cmp_name":"test2","contact_name":"meet","designation":"test1","mobile_no":9876543215,"mobile_no2":9876543216,"email":"meet@gmail.com","website":"www.test2.com","address":"nikol","address2":"nikol1","city":"patan","state":"gujarat","country":"india","pincode":655386,"note":"good","status":2,"promotion_id":1,"referral_id":2,"followDate":"2022-06-03","dob":null,"doa":null,"user_id":3,"assign_user_id":3,"product_id":2,"service_id":1,"created_by":"practical","created_time_date":"2022-06-03 17:41:45","updated_by":null,"updated_time_date":"2022-06-03 05:32:21","delete_data":1,"app_user_id":null},{"customer_id":4,"cmp_id":3,"cmp_name":"test3","contact_name":"neel","designation":"test3","mobile_no":9876543217,"mobile_no2":9876543219,"email":"neel@gmail.com","website":"www.test3.com","address":"nikol","address2":"nikol1","city":"patan","state":"gujarat","country":"india","pincode":655386,"note":"good","status":3,"promotion_id":1,"referral_id":2,"followDate":"2022-06-04","dob":null,"doa":null,"user_id":3,"assign_user_id":3,"product_id":3,"service_id":4,"created_by":"practical","created_time_date":"2022-06-03 17:43:42","updated_by":null,"updated_time_date":"2022-06-03 05:37:49","delete_data":1,"app_user_id":null},{"customer_id":5,"cmp_id":3,"cmp_name":"test4","contact_name":"kena","designation":"test4","mobile_no":9876543220,"mobile_no2":9876543221,"email":"kena@gmail.com","website":"www.test4.com","address":"nikol","address2":"nikol1","city":"patan","state":"gujarat","country":"india","pincode":655386,"note":"good","status":4,"promotion_id":1,"referral_id":2,"followDate":"2022-06-09","dob":null,"doa":null,"user_id":3,"assign_user_id":3,"product_id":3,"service_id":1,"created_by":"practical","created_time_date":"2022-06-03 17:45:29","updated_by":null,"updated_time_date":"2022-06-03 05:39:34","delete_data":1,"app_user_id":null},{"customer_id":6,"cmp_id":3,"cmp_name":"test5","contact_name":"nisha","designation":"test5","mobile_no":9876543221,"mobile_no2":9876543222,"email":"nisha@gmail.com","website":"www.test5.com","address":"nikol","address2":"nikol1","city":"patan","state":"gujarat","country":"india","pincode":655386,"note":"good","status":5,"promotion_id":2,"referral_id":2,"followDate":"2022-06-06","dob":null,"doa":null,"user_id":3,"assign_user_id":3,"product_id":3,"service_id":4,"created_by":"practical","created_time_date":"2022-06-03 17:58:12","updated_by":null,"updated_time_date":"2022-06-03 05:38:32","delete_data":1,"app_user_id":null},{"customer_id":7,"cmp_id":3,"cmp_name":"test6","contact_name":"meera","designation":"test6","mobile_no":9876543223,"mobile_no2":9876543224,"email":"meera@gmail.com","website":"www.test6.com","address":"bopal","address2":"bopal","city":"mehsana","state":"gujarat","country":"india","pincode":659386,"note":"good","status":6,"promotion_id":1,"referral_id":1,"followDate":"2022-06-08","dob":null,"doa":null,"user_id":3,"assign_user_id":3,"product_id":3,"service_id":2,"created_by":"practical","created_time_date":"2022-06-03 18:07:19","updated_by":null,"updated_time_date":"2022-06-03 05:39:41","delete_data":1,"app_user_id":null},{"customer_id":8,"cmp_id":3,"cmp_name":"test7","contact_name":"vipul","designation":"test7","mobile_no":9876543225,"mobile_no2":9876543226,"email":"vipul@gmail.com","website":"www.test7.com","address":"gota","address2":"gota","city":"ahmedabad","state":"gujarat","country":"india","pincode":659386,"note":"good","status":6,"promotion_id":2,"referral_id":1,"followDate":"2022-06-11","dob":null,"doa":null,"user_id":3,"assign_user_id":3,"product_id":3,"service_id":4,"created_by":"practical","created_time_date":"2022-06-03 18:32:18","updated_by":null,"updated_time_date":"2022-06-03 06:02:18","delete_data":1,"app_user_id":null},{"customer_id":9,"cmp_id":3,"cmp_name":"test8","contact_name":"karan","designation":"test8","mobile_no":9876543227,"mobile_no2":9876543228,"email":"karan@gmail.com","website":"www.test8.com","address":"gota","address2":"gota","city":"ahmedabad","state":"gujarat","country":"india","pincode":659776,"note":"good","status":6,"promotion_id":2,"referral_id":1,"followDate":"2022-06-21","dob":null,"doa":null,"user_id":3,"assign_user_id":3,"product_id":2,"service_id":2,"created_by":"practical","created_time_date":"2022-06-03 18:33:42","updated_by":null,"updated_time_date":"2022-06-03 06:03:42","delete_data":1,"app_user_id":null},{"customer_id":10,"cmp_id":3,"cmp_name":"test9","contact_name":"ketul","designation":"test9","mobile_no":9876543229,"mobile_no2":9876543230,"email":"ketul@gmail.com","website":"www.test9.com","address":"gota","address2":"gota","city":"ahmedabad","state":"gujarat","country":"india","pincode":659776,"note":"good","status":3,"promotion_id":2,"referral_id":1,"followDate":"2022-06-25","dob":null,"doa":null,"user_id":3,"assign_user_id":3,"product_id":1,"service_id":2,"created_by":"practical","created_time_date":"2022-06-03 18:35:12","updated_by":null,"updated_time_date":"2022-06-03 06:05:12","delete_data":1,"app_user_id":null}]

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      List<Lead>? lead,}){
    _lead = lead;
}

  Data.fromJson(dynamic json) {
    if (json['lead'] != null) {
      _lead = [];
      json['lead'].forEach((v) {
        _lead?.add(Lead.fromJson(v));
      });
    }
  }
  List<Lead>? _lead;
Data copyWith({  List<Lead>? lead,
}) => Data(  lead: lead ?? _lead,
);
  List<Lead>? get lead => _lead;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_lead != null) {
      map['lead'] = _lead?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// customer_id : 1
/// cmp_id : 3
/// cmp_name : "iboon1"
/// contact_name : "nikul"
/// designation : "test"
/// mobile_no : 9876543211
/// mobile_no2 : 9876543212
/// email : "nikul@gmail.com"
/// website : "string"
/// address : "nikol"
/// address2 : "nikol1"
/// city : "patan"
/// state : "gujarat"
/// country : "india"
/// pincode : 654356
/// note : ""
/// status : 1
/// promotion_id : 5
/// referral_id : 1
/// followDate : "2022-06-07"
/// dob : null
/// doa : null
/// user_id : 3
/// assign_user_id : 3
/// product_id : 2
/// service_id : 1
/// created_by : "practical"
/// created_time_date : "2022-06-03 17:27:33"
/// updated_by : null
/// updated_time_date : "2022-06-03 05:39:12"
/// delete_data : 1
/// app_user_id : null

Lead leadFromJson(String str) => Lead.fromJson(json.decode(str));
String leadToJson(Lead data) => json.encode(data.toJson());
class Lead {
  Lead({
      int? customerId, 
      int? cmpId, 
      String? cmpName, 
      String? contactName, 
      String? designation, 
      int? mobileNo, 
      int? mobileNo2, 
      String? email, 
      String? website, 
      String? address, 
      String? address2, 
      String? city, 
      String? state, 
      String? country, 
      int? pincode, 
      String? note, 
      int? status, 
      int? promotionId, 
      int? referralId, 
      String? followDate, 
      dynamic dob, 
      dynamic doa, 
      int? userId, 
      int? assignUserId, 
      int? productId, 
      int? serviceId, 
      String? createdBy, 
      String? createdTimeDate, 
      dynamic updatedBy, 
      String? updatedTimeDate, 
      int? deleteData, 
      dynamic appUserId,}){
    _customerId = customerId;
    _cmpId = cmpId;
    _cmpName = cmpName;
    _contactName = contactName;
    _designation = designation;
    _mobileNo = mobileNo;
    _mobileNo2 = mobileNo2;
    _email = email;
    _website = website;
    _address = address;
    _address2 = address2;
    _city = city;
    _state = state;
    _country = country;
    _pincode = pincode;
    _note = note;
    _status = status;
    _promotionId = promotionId;
    _referralId = referralId;
    _followDate = followDate;
    _dob = dob;
    _doa = doa;
    _userId = userId;
    _assignUserId = assignUserId;
    _productId = productId;
    _serviceId = serviceId;
    _createdBy = createdBy;
    _createdTimeDate = createdTimeDate;
    _updatedBy = updatedBy;
    _updatedTimeDate = updatedTimeDate;
    _deleteData = deleteData;
    _appUserId = appUserId;
}

  Lead.fromJson(dynamic json) {
    _customerId = json['customer_id'];
    _cmpId = json['cmp_id'];
    _cmpName = json['cmp_name'];
    _contactName = json['contact_name'];
    _designation = json['designation'];
    _mobileNo = json['mobile_no'];
    _mobileNo2 = json['mobile_no2'];
    _email = json['email'];
    _website = json['website'];
    _address = json['address'];
    _address2 = json['address2'];
    _city = json['city'];
    _state = json['state'];
    _country = json['country'];
    _pincode = json['pincode'];
    _note = json['note'];
    _status = json['status'];
    _promotionId = json['promotion_id'];
    _referralId = json['referral_id'];
    _followDate = json['followDate'];
    _dob = json['dob'];
    _doa = json['doa'];
    _userId = json['user_id'];
    _assignUserId = json['assign_user_id'];
    _productId = json['product_id'];
    _serviceId = json['service_id'];
    _createdBy = json['created_by'];
    _createdTimeDate = json['created_time_date'];
    _updatedBy = json['updated_by'];
    _updatedTimeDate = json['updated_time_date'];
    _deleteData = json['delete_data'];
    _appUserId = json['app_user_id'];
  }
  int? _customerId;
  int? _cmpId;
  String? _cmpName;
  String? _contactName;
  String? _designation;
  int? _mobileNo;
  int? _mobileNo2;
  String? _email;
  String? _website;
  String? _address;
  String? _address2;
  String? _city;
  String? _state;
  String? _country;
  int? _pincode;
  String? _note;
  int? _status;
  int? _promotionId;
  int? _referralId;
  String? _followDate;
  dynamic _dob;
  dynamic _doa;
  int? _userId;
  int? _assignUserId;
  int? _productId;
  int? _serviceId;
  String? _createdBy;
  String? _createdTimeDate;
  dynamic _updatedBy;
  String? _updatedTimeDate;
  int? _deleteData;
  dynamic _appUserId;
Lead copyWith({  int? customerId,
  int? cmpId,
  String? cmpName,
  String? contactName,
  String? designation,
  int? mobileNo,
  int? mobileNo2,
  String? email,
  String? website,
  String? address,
  String? address2,
  String? city,
  String? state,
  String? country,
  int? pincode,
  String? note,
  int? status,
  int? promotionId,
  int? referralId,
  String? followDate,
  dynamic dob,
  dynamic doa,
  int? userId,
  int? assignUserId,
  int? productId,
  int? serviceId,
  String? createdBy,
  String? createdTimeDate,
  dynamic updatedBy,
  String? updatedTimeDate,
  int? deleteData,
  dynamic appUserId,
}) => Lead(  customerId: customerId ?? _customerId,
  cmpId: cmpId ?? _cmpId,
  cmpName: cmpName ?? _cmpName,
  contactName: contactName ?? _contactName,
  designation: designation ?? _designation,
  mobileNo: mobileNo ?? _mobileNo,
  mobileNo2: mobileNo2 ?? _mobileNo2,
  email: email ?? _email,
  website: website ?? _website,
  address: address ?? _address,
  address2: address2 ?? _address2,
  city: city ?? _city,
  state: state ?? _state,
  country: country ?? _country,
  pincode: pincode ?? _pincode,
  note: note ?? _note,
  status: status ?? _status,
  promotionId: promotionId ?? _promotionId,
  referralId: referralId ?? _referralId,
  followDate: followDate ?? _followDate,
  dob: dob ?? _dob,
  doa: doa ?? _doa,
  userId: userId ?? _userId,
  assignUserId: assignUserId ?? _assignUserId,
  productId: productId ?? _productId,
  serviceId: serviceId ?? _serviceId,
  createdBy: createdBy ?? _createdBy,
  createdTimeDate: createdTimeDate ?? _createdTimeDate,
  updatedBy: updatedBy ?? _updatedBy,
  updatedTimeDate: updatedTimeDate ?? _updatedTimeDate,
  deleteData: deleteData ?? _deleteData,
  appUserId: appUserId ?? _appUserId,
);
  int? get customerId => _customerId;
  int? get cmpId => _cmpId;
  String? get cmpName => _cmpName;
  String? get contactName => _contactName;
  String? get designation => _designation;
  int? get mobileNo => _mobileNo;
  int? get mobileNo2 => _mobileNo2;
  String? get email => _email;
  String? get website => _website;
  String? get address => _address;
  String? get address2 => _address2;
  String? get city => _city;
  String? get state => _state;
  String? get country => _country;
  int? get pincode => _pincode;
  String? get note => _note;
  int? get status => _status;
  int? get promotionId => _promotionId;
  int? get referralId => _referralId;
  String? get followDate => _followDate;
  dynamic get dob => _dob;
  dynamic get doa => _doa;
  int? get userId => _userId;
  int? get assignUserId => _assignUserId;
  int? get productId => _productId;
  int? get serviceId => _serviceId;
  String? get createdBy => _createdBy;
  String? get createdTimeDate => _createdTimeDate;
  dynamic get updatedBy => _updatedBy;
  String? get updatedTimeDate => _updatedTimeDate;
  int? get deleteData => _deleteData;
  dynamic get appUserId => _appUserId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['customer_id'] = _customerId;
    map['cmp_id'] = _cmpId;
    map['cmp_name'] = _cmpName;
    map['contact_name'] = _contactName;
    map['designation'] = _designation;
    map['mobile_no'] = _mobileNo;
    map['mobile_no2'] = _mobileNo2;
    map['email'] = _email;
    map['website'] = _website;
    map['address'] = _address;
    map['address2'] = _address2;
    map['city'] = _city;
    map['state'] = _state;
    map['country'] = _country;
    map['pincode'] = _pincode;
    map['note'] = _note;
    map['status'] = _status;
    map['promotion_id'] = _promotionId;
    map['referral_id'] = _referralId;
    map['followDate'] = _followDate;
    map['dob'] = _dob;
    map['doa'] = _doa;
    map['user_id'] = _userId;
    map['assign_user_id'] = _assignUserId;
    map['product_id'] = _productId;
    map['service_id'] = _serviceId;
    map['created_by'] = _createdBy;
    map['created_time_date'] = _createdTimeDate;
    map['updated_by'] = _updatedBy;
    map['updated_time_date'] = _updatedTimeDate;
    map['delete_data'] = _deleteData;
    map['app_user_id'] = _appUserId;
    return map;
  }

}
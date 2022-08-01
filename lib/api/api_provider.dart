import 'package:iboon_application/api/base_provider.dart';
import 'package:iboon_application/models/models.dart';
import 'package:iboon_application/models/request/edit_profile_request.dart';
import 'package:get/get.dart';

class ApiProvider extends BaseProvider {
  Future<Response> login(String path, LoginRequest data) {
    return post(path, data.toJson(),headers: {

    });
  }

  Future<Response> register(String path, RegisterRequest data) {
    return post(path, data.toJson());
  }
  Future<Response> editProfile(String path, EditProfileRequest data) {
    return post(path, data.toJson());
  }
  Future<Response> getProfile(String path) {
    return get(path);
  }
  Future<Response> getLeads(String path) {
    return get(path);
  }
}

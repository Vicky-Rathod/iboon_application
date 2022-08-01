import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iboon_application/models/models.dart';
import 'package:iboon_application/models/response/users_response.dart';
import 'package:get/get.dart';

import '../models/request/edit_profile_request.dart';
import '../models/response/edit_profile_response.dart';
import '../models/response/leads_model.dart';
import 'api.dart';

class ApiRepository {
  ApiRepository({required this.apiProvider});

  final ApiProvider apiProvider;

  Future<LoginResponse?> login(LoginRequest data) async {
    try{
      final res = await apiProvider.login('login', data);
      print(res.bodyString);
      if (res.statusCode == 200) {
        return LoginResponse.fromJson(res.body['data']);
      }
      else{
        Get.showSnackbar(Get.snackbar(
            "Login Failed", "Invalid username or password")
            .snackbar);    }
    }catch (e){
      Get.showSnackbar(Get.snackbar(
          "Login Failed", "Invalid username or password")
          .snackbar);    }



  }

  Future<RegisterResponse?> register(RegisterRequest data) async {
    try{
      final res = await apiProvider.register('register', data);
      if (res.statusCode == 200) {
        return RegisterResponse.fromJson(res.body['data']);
      }
      else{
        Get.showSnackbar(Get.snackbar(
            "Sign Up Failed", "Invalid Details")
            .snackbar);    }
    }catch (e){
      Get.showSnackbar(Get.snackbar(
          "Sign Up Failed", "Invalid Details")
          .snackbar);    }

  }

  Future<ProfileModel?> getProfile() async {
    final res = await apiProvider.getProfile('profile');
    if (res.statusCode == 200) {
      return ProfileModel.fromJson(res.body['data']['user']);
    }
  }
  Future<EditProfileResponse?> editProfile(EditProfileRequest data) async {
    try{
      final res = await apiProvider.editProfile('profile/update', data);
      print(res.body);
      if (res.statusCode == 200) {
        return EditProfileResponse.fromJson(res.body['data']);
      }
      else{
        Get.showSnackbar(Get.snackbar(
            "Edit Profile Failed", "Invalid Details")
            .snackbar);    }
    }catch (e){
      Get.showSnackbar(Get.snackbar(
          "Edit Profile Failed", "Invalid Details")
          .snackbar);    }

  }


  Future<LeadsModel?> getLeads() async {
    final res = await apiProvider.getLeads('lead/get');
    if (res.statusCode == 200) {
      return  LeadsModel.fromJson(res.body);
    }
  }
}

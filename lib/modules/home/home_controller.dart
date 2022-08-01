import 'dart:math';

import 'package:iboon_application/api/api.dart';
import 'package:iboon_application/models/response/users_response.dart';
import 'package:iboon_application/modules/home/home.dart';
import 'package:iboon_application/shared/shared.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  final ApiRepository apiRepository;
  HomeController({required this.apiRepository});

  var storage = Get.find<SharedPreferences>();

  ProfileModel? user;

  @override
  void onReady() async {
    super.onReady();

  }

  @override
  void onInit() async {
    super.onInit();

    loadProfile();

  }

  Future<void> loadProfile() async {
    var _users = await apiRepository.getProfile();
    user = _users;
    update();

  }



}

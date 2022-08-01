import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../shared/constants/storage.dart';

FutureOr<Request> authInterceptor(request) async {
  // final token = StorageService.box.pull(StorageItems.accessToken);
  // var storage = Get.find<SharedPreferences>();
  // final token = storage.getString(StorageConstants.token);
  // request.headers['X-Requested-With'] = 'XMLHttpRequest';
  // request.headers['Authorization'] = 'Bearer $token';
  request.headers['Accept'] = 'application/json';
  request.headers['Content-Type'] = 'application/json';
  return request;
}

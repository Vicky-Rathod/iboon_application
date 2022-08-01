import 'package:flutter/material.dart';
import 'package:iboon_application/api/api.dart';
import 'package:iboon_application/models/models.dart';
import 'package:iboon_application/routes/app_pages.dart';
import 'package:iboon_application/shared/shared.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  final ApiRepository apiRepository;
  AuthController({required this.apiRepository});

  RxBool? isValidate = false.obs;

  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  TextEditingController  registerEmailController = TextEditingController();
  TextEditingController  registerPasswordController = TextEditingController();
  TextEditingController  registerFullNameController = TextEditingController();
  TextEditingController  registerContactController = TextEditingController();
  TextEditingController  registerConfirmPasswordController = TextEditingController();
  TextEditingController  loginEmailController = TextEditingController();
  TextEditingController  loginPasswordController = TextEditingController();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  void onInit() {

    super.onInit();
  }



  @override
  void onReady() {
    super.onReady();
  }

  void register(BuildContext context) async {
    AppFocus.unfocus(context);
    if (registerFormKey.currentState!.validate()) {

      final res = await apiRepository.register(
        RegisterRequest(
          full_name: registerFullNameController.text,
          contactNo: registerContactController.text,
          user_name: registerEmailController.text,
          email: registerEmailController.text,
          password: registerPasswordController.text,
          confirm_password: registerConfirmPasswordController.text,
        ),
      );

      final prefs = Get.find<SharedPreferences>();
      if(res != null)
      if (res.token.isNotEmpty) {
        prefs.setString(StorageConstants.token, res.token);
        print('Go to Home screen>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>');
      }
    }
    if(!registerFormKey.currentState!.validate()){
      isValidate!.value = true;

      update();
     }

  }

  void login(BuildContext context) async {
    AppFocus.unfocus(context);
    if (loginFormKey.currentState!.validate()) {
      final res = await apiRepository.login(
        LoginRequest(
          email_or_mobile: loginEmailController.text,
          password: loginPasswordController.text,
        ),
      );

      final prefs = Get.find<SharedPreferences>();
      if (res != null)
      if (res.token.isNotEmpty) {
        prefs.setString(StorageConstants.token, res.token);
        Get.offAllNamed(Routes.HOME);
      }
    }
    if(!loginFormKey.currentState!.validate()){
      isValidate!.value = true;

      update();
    }
  }

  @override
  void onClose() {
    super.onClose();
    isValidate!.value = false;


  }
}

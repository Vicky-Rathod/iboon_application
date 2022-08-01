import 'package:flutter/material.dart';
import 'package:iboon_application/models/request/edit_profile_request.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../api/api_repository.dart';
import '../../shared/constants/storage.dart';
import '../../shared/utils/focus.dart';

class EditProfileController extends GetxController{
  var arguments = Get.arguments;
  // Map profileDetails = ;
  RxBool? isValidate = false.obs;
  final ApiRepository apiRepository;
  EditProfileController({required this.apiRepository});
  final GlobalKey<FormState> editProfileFormKey = GlobalKey<FormState>();
  TextEditingController  editProfileEmailController = TextEditingController();
  TextEditingController  editProfileFullNameController = TextEditingController();
  TextEditingController  editProfileContactController = TextEditingController();
  TextEditingController  editProfileCcompanyNameController = TextEditingController();
@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    editProfileEmailController.text = arguments['user_name'].toString();
    editProfileFullNameController.text = arguments['full_name'];
    editProfileContactController.text = arguments['contactNo'].toString();
    editProfileCcompanyNameController.text = arguments['cmpName'];

}


  void editProfile(BuildContext context) async {
    AppFocus.unfocus(context);
    if (editProfileFormKey.currentState!.validate()) {

      final res = await apiRepository.editProfile(
        EditProfileRequest(
          email: editProfileEmailController.text,
          cmpName: editProfileCcompanyNameController.text,
          contactNo: editProfileContactController.text,
          full_name: editProfileFullNameController.text,
        ),
      );

      final prefs = Get.find<SharedPreferences>();

    }
    if(!editProfileFormKey.currentState!.validate()){
      isValidate!.value = true;

      update();
    }

  }
}
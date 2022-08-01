import 'package:iboon_application/modules/edit_profile/edit_profile_controller.dart';
import 'package:get/get.dart';

class EditProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditProfileController>(
            () => EditProfileController(apiRepository: Get.find()));
  }
}
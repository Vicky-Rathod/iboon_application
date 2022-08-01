import 'package:get/get.dart';

import 'leads_controller.dart';

class LeadsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LeadsController>(
            () => LeadsController(apiRepository: Get.find()));
  }
}
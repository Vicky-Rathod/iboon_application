import 'package:iboon_application/modules/auth/auth.dart';
import 'package:iboon_application/modules/home/home.dart';
import 'package:iboon_application/modules/leads/leads_screen.dart';
import 'package:iboon_application/modules/modules.dart';
import 'package:get/get.dart';

import '../modules/edit_profile/edit_profile_binding.dart';
import '../modules/edit_profile/edit_profile_screen.dart';
import '../modules/leads/leads_binding.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => RegisterScreen(),
      binding: AuthBinding(),

    ),
    GetPage(
        name: Routes.HOME,
        page: () => HomeScreen(),
        binding: HomeBinding(),
        ),
    GetPage(
      name: Routes.EDIT_PROFILE,
      page: () => EditProfileScreen(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: Routes.LEADS,
      page: () => LeadsScreen(),
      binding: LeadsBinding(),
    )
  ];
}

import 'package:flutter/material.dart';
import 'package:thushan_weerarathne_s_application/presentation/login_page_screen/login_page_screen.dart';
import 'package:thushan_weerarathne_s_application/presentation/singup_page_screen/singup_page_screen.dart';
import 'package:thushan_weerarathne_s_application/presentation/photo_capture_empty_screen/photo_capture_empty_screen.dart';
import 'package:thushan_weerarathne_s_application/presentation/registration_done_screen/registration_done_screen.dart';
import 'package:thushan_weerarathne_s_application/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginPageScreen = '/login_page_screen';

  static const String singupPageScreen = '/singup_page_screen';

  static const String photoCaptureEmptyScreen = '/photo_capture_empty_screen';

  static const String registrationDoneScreen = '/registration_done_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        loginPageScreen: LoginPageScreen.builder,
        singupPageScreen: SingupPageScreen.builder,
        photoCaptureEmptyScreen: PhotoCaptureEmptyScreen.builder,
        registrationDoneScreen: RegistrationDoneScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: LoginPageScreen.builder
      };
}

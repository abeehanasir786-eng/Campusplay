import 'package:get/get.dart';
import '../screens/authentication/splashscreen.dart';
import '../screens/authentication/chooseRoleScreen.dart';
import '../screens/authentication/registeration.dart';
import '../screens/authentication/login.dart';

class AppRoutes {
  static const String splash = '/';
  static const String chooseRole = '/choose-role';
  static const String register = '/register';
  static const String login = '/login';

  static List<GetPage> pages = [
    GetPage(name: splash, page: () => SplashScreen()),
    GetPage(name: chooseRole, page: () => ChooseRoleScreen()),
    GetPage(name: register, page: () => RegisterationScreen()),
    GetPage(name: login, page: () => LoginScreen()),
  ];
}
import 'package:chef_app/features/auth/peresintation/screens/change_lang_screen.dart';
import 'package:chef_app/features/auth/peresintation/screens/login_screen.dart';
import 'package:chef_app/features/auth/peresintation/screens/reset_password_screen.dart';
import 'package:chef_app/features/auth/peresintation/screens/send_code_screen.dart';
import 'package:chef_app/features/auth/peresintation/screens/splash_screen.dart';
import 'package:chef_app/features/menu/peresintation/screens/add_meal_screen.dart';
import 'package:chef_app/features/menu/peresintation/screens/menu_home.dart';
import 'package:chef_app/features/profile/peresintation/screens/change_password_screen.dart';
import 'package:chef_app/features/profile/peresintation/screens/profile_home_screen.dart';
import 'package:chef_app/features/profile/peresintation/screens/setting_screen.dart';
import 'package:chef_app/features/profile/peresintation/screens/update_profile_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String intitlRoute = '/';
  static const String chngeLang = '/chngeLang';
  static const String login = '/login';
  static const String sendCode = '/sendCode';
  static const String resetPassword = '/resetPassword';
  static const String menuHome = '/menuHome';
  static const String addMeal = '/addMeal';
  static const String profileHome = '/profileHome';
  static const String updateProfile = '/updateProfile';
  static const String setting = '/setting';
  static const String changePassword = '/changePassword';
}

class AppRoutes {
  static Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.intitlRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.chngeLang:
        return MaterialPageRoute(builder: (_) => const ChangeLangScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.sendCode:
        return MaterialPageRoute(builder: (_) => const SendCodeScreen());
      case Routes.resetPassword:
        return MaterialPageRoute(builder: (_) => const ResetPasswordScreen());
      case Routes.menuHome:
        return MaterialPageRoute(builder: (_) => const MenuHomeScreen());
      case Routes.addMeal:
        return MaterialPageRoute(builder: (_) => const AddMealScreen());
      case Routes.profileHome:
        return MaterialPageRoute(builder: (_) => const ProfileHomeScreen());
      case Routes.updateProfile:
        return MaterialPageRoute(builder: (_) => const UpdateProfileScreen());
      case Routes.setting:
        return MaterialPageRoute(builder: (_) => const SettingScreen());
      case Routes.changePassword:
        return MaterialPageRoute(builder: (_) => const ChangePasswordScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text('Not Found Route'),
                  ),
                ));
    }
  }
}

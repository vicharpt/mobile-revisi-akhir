import 'package:get/get.dart';
import 'package:mp_charpt/bindigs/auth_b.dart';
import 'package:mp_charpt/bindigs/home_b.dart';
import 'package:mp_charpt/pages/detail_music_page.dart';
import 'package:mp_charpt/pages/home_page.dart';
import 'package:mp_charpt/pages/login_page.dart';
import 'package:mp_charpt/pages/register_page.dart';
import 'package:mp_charpt/pages/splash_screen.dart';
import 'package:mp_charpt/pages/category_page.dart';
import 'package:mp_charpt/pages/about_page.dart';
import 'package:mp_charpt/routes/route_name.dart';

class AppRoute {
  static List<GetPage<dynamic>> getPages = [
    GetPage(
      name: RouteName.splashScreen,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: RouteName.homePage,
      page: () => HomePage(),
      binding: HomeBinding()
    ),
    GetPage(
      name: RouteName.categoryPage,
      page: () => CategoryPage(),
    ),
    GetPage(
      name: RouteName.detailMusicPage,
      page: () => DetailMusicPage(),
    ),
    GetPage(
      name: RouteName.aboutPage,
      page: () => AboutPage(),
    ),
    GetPage(
      name: RouteName.loginPage,
      page: () => LoginPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: RouteName.registerPage,
      page: () => RegisterPage(),
      binding: AuthBinding(),
    ),
  ];
}

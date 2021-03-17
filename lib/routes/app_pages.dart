import 'package:get/get.dart';
import 'package:template/ui/home_page.dart';
import 'package:template/ui/login_page.dart';
import 'package:template/ui/register_page.dart';

import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(), /*binding: LoginBinding()*/
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => RegisterPage(),
    ),
    GetPage(name: Routes.HOME, page: () => HomePage()),
  ];
}

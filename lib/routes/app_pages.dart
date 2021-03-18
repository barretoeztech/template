import 'package:get/get.dart';
import '../bindings/login_binding.dart';
import '../ui/home_page.dart';
import '../ui/login_page.dart';
import '../ui/register_page.dart';

import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
        name: Routes.LOGIN, page: () => LoginPage(), binding: LoginBinding()),
    GetPage(
      name: Routes.REGISTER,
      page: () => RegisterPage(),
    ),
    GetPage(name: Routes.HOME, page: () => HomePage()),
  ];
}

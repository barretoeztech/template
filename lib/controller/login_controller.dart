import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../data/model/user_model.dart';

import '../routes/app_routes.dart';
import '../provider/login_provider.dart';

class LoginController extends GetxController {
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();

  void login() async {
    Get.dialog(Center(child: CircularProgressIndicator()),
        barrierDismissible: false);

    print('User Email: ${emailTextController.text}');
    print('User password: ${passwordTextController.text}');
    await Future.delayed(const Duration(milliseconds: 2000));
    try {
      authenticateUser(emailTextController.text, passwordTextController.text);
    } catch (e) {
      print('error');
    }
    Get.offAllNamed(Routes.HOME);
  }

  void logout() {
    Get.offAllNamed(Routes.LOGIN);
  }

  void register() {
    Get.dialog(Center(child: CircularProgressIndicator()),
        barrierDismissible: false);
    try {
      authenticateUser('Marcelo Barreto', '1234567');
    } catch (e) {
      print('error');
    }

    Get.offAllNamed(Routes.HOME);
  }
}

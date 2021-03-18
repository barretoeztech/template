import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_routes.dart';

class LoginController extends GetxController {
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();

  void login() async {
    Get.dialog(Center(child: CircularProgressIndicator()),
        barrierDismissible: false);
    /*UserModel user = await repository.signInWithEmailAndPassword(
        emailTextController.text, passwordTextController.text);

    if (user != null) {
      box.write("auth", user);
      Get.offAllNamed(Routes.FUELSTART, arguments: user);
    }*/
  }

  void logout() {
    Get.offAllNamed(Routes.LOGIN);
  }

  void register() {
    Get.toNamed(Routes.REGISTER);
  }
}

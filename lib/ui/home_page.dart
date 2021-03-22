import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_routes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home Page')),
        body: Container(
          child: registerButton(),
        ));
  }

  registerButton() {
    return RaisedButton(
      onPressed: () {
        Get.offAllNamed(Routes.LOGIN);
      },
      child: Text("Voltar"),
    );
  }
}

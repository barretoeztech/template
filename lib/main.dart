import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/app_pages.dart';
import 'routes/app_routes.dart';
import 'ui/app_theme.dart';

void main() {
  runApp(
    GetMaterialApp(
        title: 'Template',
        getPages: AppPages.routes,
        initialRoute: Routes.LOGIN,
        theme: appThemeData),
  );
}

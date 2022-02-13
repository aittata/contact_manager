import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/config/functions/app_function.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppFunction.configureDependencies;
  runApp(ContactManager());
}

class ContactManager extends StatelessWidget {
  const ContactManager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        // debugShowCheckedModeBanner: false,
        // title: AppMessage.appTitle,
        // theme: AppTheme.themeData,
        // getPages: AppPages.routes,
        // initialRoute: AppPages.INITIAL,
        );
  }
}

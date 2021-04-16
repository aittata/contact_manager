import 'package:contact_manager/constant/constant.dart';
import 'package:contact_manager/screens/initial_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark().copyWith(
        primaryColor: mainColor,
        scaffoldBackgroundColor: backColor,
      ),
      home: InitialScreen(),
    );
  }
}

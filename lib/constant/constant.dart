import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';

///TODO : App Title
const String appTitle = "True Call";

///TODO : Page Index
int pageIndex;
PageController pageController = PageController(initialPage: pageIndex);
//Axis scrollDirection = Axis.horizontal;
Duration duration = Duration(milliseconds: 1500);
Curve curve = Curves.fastLinearToSlowEaseIn;

///TODO : Next Page
get nextPage async {
  pageController.animateToPage(
    pageIndex,
    duration: duration,
    curve: curve,
  );
}

///TODO : App Color
const Color mainColor = Color(0xFF00AAFF);
const Color backColor = Color(0xFFF0F0F0);

const Color lightTextColor = Colors.white;

///TODO : Device Resolution
//double screenWidth = Device.screenWidth;
//double screenHeight = Device.screenHeight;

List<Contact> contactsList = [];
//List<CallLogEntry> callsList = [];
//List<SmsLog> messageList = [];

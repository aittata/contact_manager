import 'package:call_log/call_log.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';

///TODO : App Title
const String appTitle = "True Call";

///TODO : Page Index
int pageIndex;
PageController pageController;
Duration duration = Duration(milliseconds: 1000);
Curve curve = Curves.easeInToLinear;

///TODO : Next Page
nextPage(index) async {
  pageController.animateToPage(
    index,
    duration: duration,
    curve: curve,
  );
}

///TODO : App Color
const Color mainColor = Color(0xFF00AAFF);
const Color backColor = Color(0xFFF0F0F0);
const Color lightColor = Color(0xFFF5F5F5);

const Color lightTextColor = Colors.white;
const Color darkTextColor = Colors.black54;

///TODO : Device Resolution
//double screenWidth = Device.screenWidth;
//double screenHeight = Device.screenHeight;

List<Contact> contactsList = [];
List<CallLogEntry> callsList = [];
//List<SmsLog> messageList = [];

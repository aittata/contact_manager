import 'package:call_log/call_log.dart';
import 'package:contact_manager/constant/constant.dart';
import 'package:contact_manager/widgets/calls_body.dart';
import 'package:contact_manager/widgets/contacts_body.dart';
import 'package:contact_manager/widgets/header_bar.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:permission_handler/permission_handler.dart';

class InitialScreen extends StatefulWidget {
  static const String id = "InitialScreen";
  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    super.initState();
    pageIndex = 0;
    pageController = PageController(initialPage: pageIndex);
    getContacts;
  }

  bool isContactsGranted = true;
  get getContacts async {
    isContactsGranted = await Permission.contacts.request().isGranted;
    List<Contact> _contactsList = [];
    try {
      if (isContactsGranted) {
        _contactsList = (await ContactsService.getContacts()).toList();
        setState(() {
          contactsList = _contactsList;
        });
      }
    } catch (e) {}
  }

  bool isCallsGranted = true;
  get getAllCalls async {
    isCallsGranted = await Permission.phone.request().isGranted;
    List<CallLogEntry> _callsList = [];
    try {
      if (isCallsGranted) {
        _callsList = (await CallLog.get()).toList();
        setState(() {
          callsList = _callsList;
        });
      }
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "$appTitle",
          style: GoogleFonts.itim(
            color: lightTextColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            HeaderBar(),
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    pageIndex = index;
                    nextPage(pageIndex);
                  });
                },
                children: [
                  CallsBody(),
                  ContactsBody(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

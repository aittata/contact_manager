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
                    nextPage;
                  });
                },
                children: [
                  ContactsBody(),
                  CallsBody(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

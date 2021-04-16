import 'package:contact_manager/constant/constant.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactDetails extends StatelessWidget {
  final Contact contact;
  const ContactDetails({this.contact});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "${contact.displayName}",
          style: GoogleFonts.itim(
            color: lightTextColor,
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: (contact.avatar != null && contact.avatar.length > 0)
                  ? CircleAvatar(
                      backgroundColor: mainColor,
                      backgroundImage: MemoryImage(contact.avatar),
                      radius: 50,
                    )
                  : CircleAvatar(
                      backgroundColor: mainColor,
                      radius: 50,
                      child: Text(
                        "${contact.initials()}",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
            ),
            Container(
              child: Text(
                "${contact.displayName}",
                style: GoogleFonts.itim(
                  fontSize: 18,
                  color: Colors.black54,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

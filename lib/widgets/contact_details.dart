import 'package:contact_manager/constant/constant.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DividerLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(color: mainColor);
  }
}

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
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            Container(
              child: (contact.avatar != null && contact.avatar.length > 0)
                  ? CircleAvatar(
                      backgroundColor: mainColor,
                      backgroundImage: MemoryImage(contact.avatar),
                      radius: 64,
                    )
                  : CircleAvatar(
                      backgroundColor: mainColor,
                      radius: 64,
                      child: Text(
                        "${contact.initials()}",
                        style: GoogleFonts.itim(
                          fontSize: 64,
                          color: lightTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "${contact.displayName}",
                style: GoogleFonts.itim(
                  fontSize: 20,
                  color: darkTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            DividerLine(),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      minimumSize: Size.zero,
                    ),
                    child: Column(
                      children: [
                        Icon(
                          CupertinoIcons.phone_fill,
                          size: 30,
                          color: mainColor,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Call",
                          style: TextStyle(
                            color: mainColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      minimumSize: Size.zero,
                    ),
                    child: Column(
                      children: [
                        Icon(
                          CupertinoIcons.captions_bubble_fill,
                          size: 30,
                          color: mainColor,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Chat",
                          style: TextStyle(
                            color: mainColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      minimumSize: Size.zero,
                    ),
                    child: Column(
                      children: [
                        Icon(
                          CupertinoIcons.xmark_circle_fill,
                          size: 30,
                          color: mainColor,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Block",
                          style: TextStyle(
                            color: mainColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            DividerLine(),
            Column(
              children: List.generate(contact.phones.length, (index) {
                List<Item> phonesList = contact.phones.toList();
                var value = phonesList[index];
                return Container(
                  decoration: BoxDecoration(
                    color: lightColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 2),
                  child: ListTile(
                    leading: Icon(
                      CupertinoIcons.phone_fill,
                      size: 30,
                      color: mainColor,
                    ),
                    title: Text(
                      "${value.value}",
                      style: GoogleFonts.itim(
                        fontSize: 18,
                        color: darkTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "${value.label}",
                      style: GoogleFonts.itim(
                        color: darkTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Icon(
                      CupertinoIcons.captions_bubble_fill,
                      color: mainColor,
                    ),
                  ),
                );
              }),
            ),
            Column(
              children: List.generate(contact.emails.length, (index) {
                List<Item> emailsList = contact.emails.toList();
                var value = emailsList[index];
                return Container(
                  decoration: BoxDecoration(
                    color: lightColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 2),
                  child: ListTile(
                    leading: Icon(
                      CupertinoIcons.mail_solid,
                      size: 30,
                      color: mainColor,
                    ),
                    title: Text(
                      "${value.value}",
                      style: GoogleFonts.itim(
                        fontSize: 18,
                        color: darkTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "${value.label}",
                      style: GoogleFonts.itim(
                        color: darkTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              }),
            ),
            Column(
              children: List.generate(contact.postalAddresses.length, (index) {
                List addressesList = contact.postalAddresses.toList();
                var value = addressesList[index];
                return Container(
                  decoration: BoxDecoration(
                    color: lightColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 2),
                  child: ListTile(
                    leading: Icon(
                      CupertinoIcons.location_solid,
                      size: 30,
                      color: mainColor,
                    ),
                    title: Text(
                      "$value",
                      style: GoogleFonts.itim(
                        fontSize: 18,
                        color: darkTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "${value.label}",
                      style: GoogleFonts.itim(
                        color: darkTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              }),
            ),
            if (contact.jobTitle != null && contact.company != null)
              Container(
                decoration: BoxDecoration(
                  color: lightColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.symmetric(vertical: 2),
                child: ListTile(
                  leading: Icon(
                    CupertinoIcons.bag_fill,
                    size: 30,
                    color: mainColor,
                  ),
                  title: Text(
                    "${contact.jobTitle}",
                    style: GoogleFonts.itim(
                      fontSize: 18,
                      color: darkTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "${contact.company}",
                    style: GoogleFonts.itim(
                      color: darkTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

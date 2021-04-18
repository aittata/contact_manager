import 'package:contact_manager/constant/constant.dart';
import 'package:contact_manager/widgets/contact_details.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactShape extends StatelessWidget {
  final Contact contact;
  const ContactShape({this.contact});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ContactDetails(contact: contact);
              },
            ),
          );
        },
        contentPadding: EdgeInsets.only(left: 10),
        leading: Container(
          child: (contact.avatar != null && contact.avatar.length > 0)
              ? CircleAvatar(
                  backgroundColor: mainColor,
                  backgroundImage: MemoryImage(contact.avatar),
                )
              : CircleAvatar(
                  backgroundColor: mainColor,
                  child: Text(
                    "${contact.initials()}",
                    style: TextStyle(
                      color: lightTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
        ),
        title: Container(
          padding: EdgeInsets.all(5),
          child: Text(
            "${contact.displayName}",
            style: GoogleFonts.itim(
              fontSize: 18,
              color: darkTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        trailing: IconButton(
          onPressed: () {},
          padding: EdgeInsets.zero,
          color: mainColor,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          icon: Icon(CupertinoIcons.phone_fill),
        ),
      ),
    );
  }
}

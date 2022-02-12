import 'package:contact_manager/app/config/constants/app_constant.dart';
import 'package:contact_manager/app/config/themes/app_theme.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';

class ContactShape extends StatelessWidget {
  final Contact contact;
  final Function? onPressed;
  const ContactShape({Key? key, required this.contact, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: AppTheme.primaryBackColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [AppConstant.boxShadow],
      ),
      child: ListTile(
        title: Text(
          "${contact.displayName}",
          style: TextStyle(
            color: AppTheme.mainColor,
            fontWeight: FontWeight.w900,
          ),
        ),
        subtitle: Text(
          "${contact.phones!.first.value}",
          style: TextStyle(
            color: AppTheme.primaryTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

import 'package:contact_manager/constant/constant.dart';
import 'package:contact_manager/widgets/contact_shape.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';

class ContactsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: ListView.builder(
          padding: EdgeInsets.all(5),
          physics: BouncingScrollPhysics(),
          itemCount: contactsList.length,
          itemBuilder: (context, index) {
            Contact contact = contactsList[index];
            return ContactShape(contact: contact);
          },
        ),
      ),
    );
  }
}

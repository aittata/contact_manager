import 'package:contact_manager/app/config/messages/app_message.dart';
import 'package:contact_manager/app/modules/initial/controllers/initial_controller.dart';
import 'package:contact_manager/app/modules/initial/widgets/bounce_point.dart';
import 'package:contact_manager/app/modules/initial/widgets/contact_shape.dart';
import 'package:contact_manager/app/modules/initial/widgets/empty_box.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialView extends StatelessWidget {
  final InitialController controller = Get.put(InitialController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppMessage.appTitle),
      ),
      body: Obx(() {
        final bool state = controller.state.value;
        if (state) {
          return BouncePoint();
        } else {
          final List<Contact> contacts = controller.contacts;
          final bool isEmpty = contacts.isEmpty;
          if (isEmpty) {
            return EmptyBox();
          } else {
            return ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.all(10),
              physics: BouncingScrollPhysics(),
              itemCount: contacts.length,
              itemBuilder: (context, i) {
                final Contact contact = contacts[i];
                return ContactShape(contact: contact);
              },
            );
            // return Center(child: Text(contacts.length.toString()));
          }
        }
      }),
    );
  }
}

import 'package:contact_manager/app/config/messages/app_message.dart';
import 'package:contact_manager/app/modules/initial/controllers/initial_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialView extends StatefulWidget {
  @override
  State<InitialView> createState() => _InitialViewState();
}

class _InitialViewState extends State<InitialView> {
  final InitialController controller = Get.put(InitialController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppMessage.appTitle),
        centerTitle: true,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    Get.delete<InitialController>();
  }
}

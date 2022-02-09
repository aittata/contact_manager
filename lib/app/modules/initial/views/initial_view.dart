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
        backgroundColor: Colors.yellow,
        title: Text(AppMessage.appTitle),
        flexibleSpace: Container(
          // width: 100,
          // height: 56,
          color: Colors.red,
        ),
        // bottom: PreferredSize(
        //   preferredSize: Size(56, 0),
        //   child: Container(
        //     //color: Colors.blue,
        //     child: Text("hello"),
        //     //height: 20,
        //   ),
        // ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    Get.delete<InitialController>();
  }
}

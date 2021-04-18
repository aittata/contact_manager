import 'package:call_log/call_log.dart';
import 'package:contact_manager/constant/constant.dart';
import 'package:flutter/material.dart';

class CallsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.all(5),
        physics: BouncingScrollPhysics(),
        itemCount: callsList.length,
        itemBuilder: (context, index) {
          CallLogEntry callLog = callsList[index];
          return CallShape(callLog: callLog);
        },
      ),
    );
  }
}

class CallShape extends StatelessWidget {
  final CallLogEntry callLog;
  const CallShape({this.callLog});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

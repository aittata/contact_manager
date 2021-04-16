import 'package:contact_manager/constant/constant.dart';
import 'package:contact_manager/widgets/header_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderBar extends StatefulWidget {
  @override
  _HeaderBarState createState() => _HeaderBarState();
}

class _HeaderBarState extends State<HeaderBar> {
  @override
  void initState() {
    super.initState();
    pageIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          HeaderButton(
            index: 0,
            icon: CupertinoIcons.person_2_fill,
            title: "Contact",
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
          ),
          HeaderButton(
            index: 1,
            icon: CupertinoIcons.phone_fill,
            title: "History",
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
          ),
        ],
      ),
    );
  }
}

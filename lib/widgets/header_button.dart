import 'package:contact_manager/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderButton extends StatelessWidget {
  final int index;
  final String title;
  final IconData icon;
  final Function onPressed;
  HeaderButton({this.index, this.icon, this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimatedContainer(
        duration: duration,
        curve: curve,
        decoration: BoxDecoration(
          color: mainColor,
          border: Border(
            bottom: BorderSide(
              color: pageIndex == index ? backColor : Colors.transparent,
              width: 5,
            ),
          ),
        ),
        child: IconButton(
          onPressed: onPressed,
          color: lightTextColor,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          icon: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon),
              SizedBox(width: 20),
              Text(
                "$title",
                style: GoogleFonts.itim(
                  color: lightTextColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

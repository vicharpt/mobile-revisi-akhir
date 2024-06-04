import 'package:flutter/material.dart';
import '../widgets/my_icon_button.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyIconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 30,
          ),
        ),
        MyIconButton(
          icon: Icon(
            Icons.more_horiz,
            size: 35,
            color: Colors.white,
          ),
          padding: EdgeInsets.symmetric(horizontal: 5),
        ),
      ],
    );
  }
}

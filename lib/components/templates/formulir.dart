import 'package:flutter/material.dart';
import '../../consts/colors.dart' as AppColor;

class Formulir extends StatelessWidget {
  final Widget child;
  const Formulir({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: AppColor.bgYellowGradient),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset("assets/Circle widget.png", fit: BoxFit.cover),
          ),
          child,
        ],
      ),
    );
  }
}

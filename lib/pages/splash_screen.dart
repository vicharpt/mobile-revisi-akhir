import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp_charpt/routes/route_name.dart';
import '../consts/text_style.dart';
import '../consts/colors.dart' as AppColor;

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () async {
      await Get.toNamed(RouteName.loginPage);
    });

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: AppColor.bgYellowGradient,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/logo/logo.png"),
              Text(
                "MP Charpt",
                style: ourStyle(
                  size: 36,
                  weight: fontSemiBold,
                  shadow: Shadow(
                    blurRadius: 4,
                    offset: const Offset(2, 0),
                    color: Colors.black.withOpacity(0.25),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

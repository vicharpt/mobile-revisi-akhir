import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp_charpt/pages/home_page.dart';
import 'package:mp_charpt/routes/app_route.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      getPages: AppRoute.getPages,
    );
  }
}
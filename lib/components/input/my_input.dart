import 'package:flutter/material.dart';
import '../../consts/text_style.dart';
import '../../consts/colors.dart' as AppColor;

class MyInput extends StatelessWidget {

  final TextEditingController controller;
  final BorderRadiusGeometry? borderRadius;
  final IconData icon;
  final String hint;
  final String? shadowOffset;
  final bool hiddenPassword;
  MyInput({
    super.key,
    required this.controller,
    required this.icon,
    required this.hint,
    this.hiddenPassword = false,
    this.borderRadius,
    this.shadowOffset,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 7,
            offset: Offset(0, shadowOffset == 'bottom' ? 2 : -2),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        obscureText: hiddenPassword,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: AppColor.textSlate,
            size: 22,
          ),
          hintText: hint,
          hintStyle: ourStyle(color: AppColor.textSlate, size: 14),
          filled: true,
          fillColor: AppColor.bgSlate,
        ),
      ),
    );
  }
}

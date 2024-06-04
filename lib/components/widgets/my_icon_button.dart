import 'package:flutter/material.dart';
import '../../consts/colors.dart' as AppColor;

class MyIconButton extends StatelessWidget {
  final Icon icon;
  final Color bgColor;
  final bool blur;
  final EdgeInsetsGeometry? padding;
  final double height, width;
  MyIconButton({
    super.key,
    required this.icon,
    this.bgColor = Colors.transparent,
    this.blur = true,
    this.padding,
    this.height = 43,
    this.width = 50,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: blur ? AppColor.bgFilled.withOpacity(0.3) : bgColor,
        borderRadius: BorderRadius.circular(height == width ? 999 : 10),
        boxShadow: bgColor != Colors.transparent
            ? [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 4,
                  offset: Offset(0, 2),
                )
              ]
            : null,
      ),
      child: MaterialButton(
        onPressed: () {},
        padding: padding,
        child: icon,
      ),
    );
  }
}

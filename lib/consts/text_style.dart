import 'package:flutter/material.dart';

const fontNormal = FontWeight.normal;
const fontSemiBold = FontWeight.w600;
const fontBold = FontWeight.bold;

ourStyle({
  Color? color,
  double? size,
  FontWeight? weight,
  Shadow? shadow,
  bool underline = false,
}) {
  return TextStyle(
    color: color ?? Colors.white,
    fontSize: size ?? 14,
    fontWeight: weight ?? fontNormal,
    shadows: shadow != null ? [shadow] : null,
    decoration: underline ? TextDecoration.underline : TextDecoration.none,
    decorationColor: color,
    
  );
}

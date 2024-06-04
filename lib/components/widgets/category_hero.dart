import 'package:flutter/material.dart';
import 'package:mp_charpt/consts/text_style.dart';

class CategoryHero extends StatelessWidget {
  final String title, description;
  CategoryHero({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 234,
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.6),
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(100))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: ourStyle(size: 32, weight: fontSemiBold),
          ),
          Text(
            title,
            style: ourStyle(size: 20),
          ),
        ],
      ),
    );
  }
}

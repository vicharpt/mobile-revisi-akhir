import 'package:flutter/material.dart';
import 'package:mp_charpt/consts/text_style.dart';

class CardCategory extends StatelessWidget {
  final String imgUrl;
  final String title, description;

  CardCategory({
    super.key,
    required this.imgUrl,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      margin: EdgeInsets.only(right: 15),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(children: [
        Image.asset(imgUrl),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: ourStyle(size: 16, weight: fontSemiBold),
            ),
            Text(
              title,
              style: ourStyle(size: 12),
            ),
          ],
        ),
      ]),
    );
  }
}

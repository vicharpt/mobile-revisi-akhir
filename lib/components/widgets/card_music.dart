import 'package:flutter/material.dart';
import '../../consts/text_style.dart';
import '../../consts/colors.dart' as AppColor;

// List<Color> bgGlass = [
//   const Color(0xFFECEBEB).withOpacity(0.2),
//   const Color(0xFF8D8D8D).withOpacity(0.2),
// ];

class CardMusic extends StatelessWidget {
  final String title, artist;
  CardMusic({super.key, required this.title, required this.artist});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 85,
      margin: EdgeInsets.only(bottom: 11),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFECEBEB).withOpacity(0.5),
            Color(0xFF8D8D8D).withOpacity(0.5),
          ],
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 65,
            width: 65,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: AppColor.bgSlate,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: ourStyle(
                  size: 18,
                  weight: FontWeight.w600,
                ),
              ),
              Text(
                artist,
                style: ourStyle(),
              ),
            ],
          )
        ],
      ),
    );
  }
}

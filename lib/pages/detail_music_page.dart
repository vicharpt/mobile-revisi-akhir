import 'package:flutter/material.dart';
import 'package:mp_charpt/components/widgets/my_icon_button.dart';
import '../components/app_bar/my_app_bar.dart';
import '../consts/colors.dart' as AppColor;
import '../consts/text_style.dart';

class DetailMusicPage extends StatelessWidget {
  const DetailMusicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: AppColor.bgDetailMusic,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(15, 45, 15, 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            MyAppBar(),
            SizedBox(height: 70),
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.6),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            SizedBox(height: 40),
            Column(children: [
              Text('Music name',
                  style: ourStyle(size: 24, weight: fontSemiBold)),
              SizedBox(height: 10),
              Text('Music name', style: ourStyle(size: 16)),
            ]),
            SizedBox(height: 20),
            Column(
              children: [
                Slider(
                  value: Duration(seconds: 0).inSeconds.toDouble(),
                  min: Duration(seconds: 0).inSeconds.toDouble(),
                  max: Duration(seconds: 30).inSeconds.toDouble(),
                  onChanged: (value) {
                    value = value;
                  },
                  activeColor: AppColor.textBlue,
                  inactiveColor: AppColor.bgFilled,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23),
                  child: Row(
                    children: [
                      Text('00:00', style: ourStyle(size: 16)),
                      Spacer(),
                      Text('00:30', style: ourStyle(size: 16)),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 30, 8, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyIconButton(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      icon: Icon(Icons.shuffle,
                          color: Colors.white.withOpacity(0.5), size: 35),
                      blur: false),
                  MyIconButton(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      icon: Icon(Icons.skip_previous,
                          color: Colors.white, size: 35),
                      blur: false),
                  MyIconButton(
                      height: 80,
                      width: 80,
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      bgColor: AppColor.bgFilled,
                      icon: Icon(Icons.play_arrow,
                          color: Colors.black.withOpacity(0.85), size: 35),
                      blur: false),
                  MyIconButton(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      icon:
                          Icon(Icons.skip_next, color: Colors.white, size: 35),
                      blur: false),
                  MyIconButton(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      icon: Icon(Icons.repeat,
                          color: Colors.white.withOpacity(0.5), size: 35),
                      blur: false),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}

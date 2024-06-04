import 'package:flutter/material.dart';
import '../consts/text_style.dart';
import '../consts/colors.dart' as AppColor;
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgDarkBlue,
      body: Center(
        child: Container(
          height: 530,
          width: 350,
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.fromLTRB(25, 20, 25, 34),
          decoration: BoxDecoration(
              color: AppColor.bgFilled.withOpacity(0.5),
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            children: [
              Column(
                children: [
                  Text(
                    'MP Charpt',
                    style: ourStyle(size: 40, weight: fontSemiBold),
                  ),
                  SizedBox(height: 30),
                  HtmlWidget(
                      '<div style="text-align: justify; color: white; font-size: 18px; font-weight: 500">'
                      'MP Charpt adalah sebuah apliksi pemutar musik. Aplikasi ini diciptakan membuat para pengguna supaya tidak merasa bosan, saat melakukan aktivitas seperti saat melakukan joging atau pun sedang menyendiri.'
                      '</div>')
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('© copyright 2024 - 2025', style: ourStyle(size: 11)),
                  MaterialButton(
                    onPressed: () {},
                    color: AppColor.textBlue,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text('Kembali', style: ourStyle()),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

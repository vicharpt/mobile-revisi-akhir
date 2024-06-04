import 'package:flutter/material.dart';
import '../components/app_bar/my_app_bar.dart';
import '../components/widgets/category_hero.dart';
import '../components/widgets/card_music.dart';
import '../../consts/text_style.dart';
import '../../consts/colors.dart' as AppColor;

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColor.textBlue, AppColor.bgPurple])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(children: [
            Stack(children: [
              CategoryHero(title: 'title', description: 'description'),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 45, 15, 0),
                child: MyAppBar(),
              )
            ]),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.shuffle, size: 35, color: Colors.white),
                      SizedBox(width: 5),
                      Text(
                        'Shuffle',
                        style: ourStyle(size: 20),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 520,
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) => CardMusic(title: 'Music name', artist: 'Artist',),)
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}

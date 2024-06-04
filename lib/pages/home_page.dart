import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp_charpt/controller/category_c.dart';
import '../consts/text_style.dart';
import '../components/widgets/my_icon_button.dart';
import '../consts/colors.dart' as AppColor;
import '../components/widgets/card_category.dart';
import '../components/widgets/card_music.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CategoryC categoryC = Get.find<CategoryC>();

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.black.withOpacity(0.85), AppColor.bgDarkBlue],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Padding(
            padding: const EdgeInsets.only(top: 5, left: 5, right: 15),
            child: AppBar(
              backgroundColor: Colors.transparent,
              automaticallyImplyLeading: false,
              title: Text(
                'MP Charpt',
                style: ourStyle(
                    size: 20, weight: fontBold, color: AppColor.bgDarkBlue),
              ),
              actions: [
                MyIconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.white.withOpacity(0.9),
                    size: 35,
                  ),
                  blur: false,
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "MP Chaprt,",
                      style: ourStyle(
                          size: 24, weight: fontBold, color: AppColor.bgRed),
                    ),
                    Text(
                      " ekspresi jiwa",
                      style: ourStyle(
                        size: 24,
                        color: Colors.white.withOpacity(0.9),
                      ),
                    ),
                  ],
                ),
                Text(
                  "tanpa batas...",
                  style: ourStyle(
                    size: 24,
                    color: Colors.white.withOpacity(0.9),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Flexible(
                      flex: 10,
                      child: MaterialButton(
                        onPressed: () {},
                        padding: const EdgeInsets.all(0),
                        child: Container(
                          height: 43,
                          width: double.infinity,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.bgFilled,
                          ),
                          child: Text(
                            'Telusuri lagu...',
                            style: ourStyle(size: 16, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: MyIconButton(
                          icon: Icon(Icons.search, size: 26),
                          bgColor: AppColor.bgFilled,
                          blur: false,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "kategory",
                  style: ourStyle(),
                ),
                SizedBox(height: 10),
                Text('${categoryC.categories}'),
                Obx(() {
                  if (categoryC.categories.isEmpty) {
                    return Center(child: CircularProgressIndicator());
                  }
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryC.categories.length,
                    itemBuilder: (context, index) => CardCategory(
                      imgUrl: categoryC.categories[index].imgUrl,
                      title: categoryC.categories[index].title,
                      description: categoryC.categories[index].description,
                    ),
                  );
                }),
                SizedBox(height: 25),
                Text(
                  'Rekomendasi',
                  style: ourStyle(
                    size: 20,
                    weight: fontSemiBold,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 20, right: 20),
                    height: 362,
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) => CardMusic(
                        title: 'Music name',
                        artist: 'Artist',
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

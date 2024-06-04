import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp_charpt/controller/auth_c.dart';
import '../components/input/my_input.dart';
import '../consts/text_style.dart';
import '../components/templates/formulir.dart';
import '../consts/colors.dart' as AppColor;
import '../routes/route_name.dart';

import 'package:slide_to_act/slide_to_act.dart';

class LoginPage extends StatelessWidget {
  final loginC = Get.find<AuthC>();
  final userOrEmail = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Formulir(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Center(
              child: Text(
                "Login",
                style: ourStyle(
                    size: 32,
                    weight: fontSemiBold,
                    shadow: Shadow(
                      blurRadius: 4,
                      color: Colors.black.withOpacity(0.25),
                      offset: Offset(0, 4),
                    )),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: Get.height * 0.12, right: Get.width * 0.35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        MyInput(
                          controller: userOrEmail,
                          icon: Icons.person,
                          hint: 'username/email...',
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(999),
                          ),
                          shadowOffset: 'top',
                        ),
                        Obx(
                          () => MyInput(
                            hiddenPassword: loginC.hiddenPassword1.value,
                            controller: password,
                            icon: Icons.lock,
                            hint: 'password...',
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(999),
                            ),
                            shadowOffset: 'bottom',
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 15,
                      right: -20,
                      child: Container(
                        width: 65,
                        height: 64,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              blurRadius: 10,
                              offset: Offset(2, 2),
                            )
                          ],
                          color: AppColor.bgYellow,
                          shape: BoxShape.circle,
                        ),
                        child: Obx(
                          () => IconButton(
                            onPressed: () {
                              loginC.hiddenPassword1.value =
                                  !loginC.hiddenPassword1.value;
                            },
                            icon: Icon(
                              loginC.hiddenPassword1.value
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              size: 26,
                              color: Colors.black.withOpacity(0.75),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: Get.height * 0.2, right: Get.width * 0.35),
            child: SlideAction(
              onSubmit: () => loginC.login(userOrEmail.text, password.text),
              height: 70,
              borderRadius: 15,
              outerColor: AppColor.bgYellow,
              text: "kirim >>",
              textStyle: ourStyle(size: 16),
            ),
          ),
          SizedBox(height: 70),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              bottom: 70,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Belum punya akun?",
                  style: ourStyle(size: 16),
                ),
                TextButton(
                  onPressed: () => {
                    userOrEmail.text = '',
                    password.text = '',
                    Get.toNamed(RouteName.registerPage)
                  },
                  child: Text(
                    " registrasi",
                    style: ourStyle(
                      size: 16,
                      weight: fontSemiBold,
                      color: AppColor.textBlue,
                      underline: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

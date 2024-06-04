import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp_charpt/controller/auth_c.dart';
import '../components/input/my_input.dart';
import '../consts/text_style.dart';
import '../components/templates/formulir.dart';
import '../consts/colors.dart' as AppColor;

import 'package:slide_to_act/slide_to_act.dart';

class RegisterPage extends StatelessWidget {
  final registerC = Get.find<AuthC>();
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final passwordConfirm = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Formulir(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Center(
              child: Text(
                "Register",
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
            padding:
                EdgeInsets.only(top: Get.height * 0.1, right: Get.width * 0.35),
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
                          controller: username,
                          icon: Icons.person,
                          hint: 'username...',
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(999),
                          ),
                          shadowOffset: 'top',
                        ),
                        MyInput(
                          controller: email,
                          icon: Icons.email_rounded,
                          hint: 'email...',
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(999),
                          ),
                          shadowOffset: 'bottom',
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
                              registerC.hiddenPassword1.value =
                                  !registerC.hiddenPassword1.value;
                            },
                            icon: Icon(
                              registerC.hiddenPassword1.value
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.black.withOpacity(0.75),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Obx(
                          () => MyInput(
                            controller: password,
                            hiddenPassword: registerC.hiddenPassword1.value,
                            icon: Icons.lock,
                            hint: 'password...',
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(999),
                            ),
                            shadowOffset: 'top',
                          ),
                        ),
                        Obx(
                          () => MyInput(
                            controller: passwordConfirm,
                            hiddenPassword: registerC.hiddenPassword2.value,
                            icon: Icons.lock,
                            hint: 'password konfirmasi...',
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(999),
                            ),
                            shadowOffset: 'bottom',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Text("Lupa kata sandi?", style: ourStyle()),
                        )
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
                              registerC.hiddenPassword2.value =
                                  !registerC.hiddenPassword2.value;
                            },
                            icon: Icon(
                              registerC.hiddenPassword2.value
                                  ? Icons.visibility_off
                                  : Icons.visibility,
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
            padding: EdgeInsets.only(
                top: Get.height * 0.05, right: Get.width * 0.35),
            child: SlideAction(
              onSubmit: () =>
                  registerC.register(username.text, email.text, password.text, passwordConfirm.text),
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
                  "Sudah punya akun?",
                  style: ourStyle(size: 16),
                ),
                TextButton(
                  onPressed: () => Get.back(),
                  child: Text(
                    " login",
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

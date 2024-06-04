import 'package:get/get.dart';
import 'package:mp_charpt/routes/route_name.dart';

class AuthC extends GetxController {
  var hiddenPassword1 = true.obs;
  var hiddenPassword2 = true.obs;
  List dummy = ['admin', '123'];

  Future<void> login(String userOrEmail, String password) async {
      if (userOrEmail != '' && password != '') {
        if (userOrEmail == dummy[0] && password == dummy[1]) {
          await Get.offNamed(RouteName.homePage);
        } else {
          Get.snackbar(
            'username atau password salah!',
            'coba gunakan akun lain',
            duration: Duration(seconds: 3),
            animationDuration: Duration(milliseconds: 500),
          );
        }
      } else {
        Get.snackbar(
          'Error',
          'username atau password tidak boleh kosong!',
          duration: Duration(seconds: 3),
          animationDuration: Duration(milliseconds: 500),
        );
      }
  }

  Future<void> register(String username, String email, String password,
      String passwordConfirm) async {
    if (username != '' &&
        email != '' &&
        password != '' &&
        passwordConfirm != '') {
      if (password != passwordConfirm) {
        Get.snackbar(
          'Error',
          'password tidak sama!',
          duration: Duration(seconds: 3),
          animationDuration: Duration(milliseconds: 500),
        );
      } else {
        dummy[0] = username;
        dummy[1] = password;
        Get.back();
      }
    } else {
      Get.snackbar(
        'Error',
        'Data tidak boleh kosong!',
        duration: Duration(seconds: 3),
        animationDuration: Duration(milliseconds: 500),
      );
    }
  }

  @override
  void onClose() {
    hiddenPassword1.close();
    hiddenPassword2.close();
    super.onClose();
  }
}

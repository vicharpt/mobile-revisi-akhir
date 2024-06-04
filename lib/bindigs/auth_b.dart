import 'package:get/get.dart';
import 'package:mp_charpt/controller/auth_c.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthC());
  }
}
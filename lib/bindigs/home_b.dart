import 'package:get/get.dart';
import 'package:mp_charpt/controller/category_c.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CategoryC());
  }
}

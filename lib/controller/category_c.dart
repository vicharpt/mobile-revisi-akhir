import 'package:get/get.dart';
import 'package:mp_charpt/models/category_m.dart';
import 'package:mp_charpt/providers/category_p.dart';

class CategoryC extends GetxController {
  var categories = <CategoryM>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchCategories();
  }

  void fetchCategories() async {
    final response = await CategoryP().getCategories();
    if (response.statusCode == 200) {
      var data = response.body as Map<String, dynamic>;
      categories.value = data.values.map((e) => CategoryM.fromJson(e)).toList();
    } else {
      Get.snackbar('Error', 'Failed to fetch categories');
    }
  }
}
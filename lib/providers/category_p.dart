import 'package:get/get.dart';

class CategoryP extends GetConnect {
  final url = 'https://mp-charpt-default-rtdb.firebaseio.com/';

  Future<Response> getCategories() => get('$url/categories.json');
}

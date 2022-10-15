import '../controller/category_comedy_controller.dart';
import 'package:get/get.dart';

class CategoryComedyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryComedyController());
  }
}

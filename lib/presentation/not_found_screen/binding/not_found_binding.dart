import '../controller/not_found_controller.dart';
import 'package:get/get.dart';

class NotFoundBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotFoundController());
  }
}

import '../controller/select_saved_controller.dart';
import 'package:get/get.dart';

class SelectSavedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectSavedController());
  }
}

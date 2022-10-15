import '../controller/saved_empty_controller.dart';
import 'package:get/get.dart';

class SavedEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SavedEmptyController());
  }
}

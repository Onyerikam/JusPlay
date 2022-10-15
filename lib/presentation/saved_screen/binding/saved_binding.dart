import '../controller/saved_controller.dart';
import 'package:get/get.dart';

class SavedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SavedController());
  }
}

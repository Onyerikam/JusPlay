import '../controller/episode1_controller.dart';
import 'package:get/get.dart';

class Episode1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Episode1Controller());
  }
}

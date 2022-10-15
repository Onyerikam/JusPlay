import '../controller/choose_plan_controller.dart';
import 'package:get/get.dart';

class ChoosePlanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChoosePlanController());
  }
}

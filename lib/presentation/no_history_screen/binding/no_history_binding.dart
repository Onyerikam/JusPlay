import '../controller/no_history_controller.dart';
import 'package:get/get.dart';

class NoHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoHistoryController());
  }
}

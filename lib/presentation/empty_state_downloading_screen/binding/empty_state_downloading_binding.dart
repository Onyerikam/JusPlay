import '../controller/empty_state_downloading_controller.dart';
import 'package:get/get.dart';

class EmptyStateDownloadingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmptyStateDownloadingController());
  }
}

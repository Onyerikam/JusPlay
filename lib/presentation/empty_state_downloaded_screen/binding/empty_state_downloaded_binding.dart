import '../controller/empty_state_downloaded_controller.dart';
import 'package:get/get.dart';

class EmptyStateDownloadedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmptyStateDownloadedController());
  }
}

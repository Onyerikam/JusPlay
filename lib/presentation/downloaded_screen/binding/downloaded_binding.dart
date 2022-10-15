import '../controller/downloaded_controller.dart';
import 'package:get/get.dart';

class DownloadedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DownloadedController());
  }
}

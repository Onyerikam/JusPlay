import '../controller/downloading_controller.dart';
import 'package:get/get.dart';

class DownloadingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DownloadingController());
  }
}

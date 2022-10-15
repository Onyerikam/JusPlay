import '../controller/no_notification_controller.dart';
import 'package:get/get.dart';

class NoNotificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoNotificationController());
  }
}

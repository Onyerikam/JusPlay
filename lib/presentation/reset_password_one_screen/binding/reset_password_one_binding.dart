import '../controller/reset_password_one_controller.dart';
import 'package:get/get.dart';

class ResetPasswordOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResetPasswordOneController());
  }
}

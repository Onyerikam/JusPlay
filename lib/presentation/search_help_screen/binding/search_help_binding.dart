import '../controller/search_help_controller.dart';
import 'package:get/get.dart';

class SearchHelpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchHelpController());
  }
}

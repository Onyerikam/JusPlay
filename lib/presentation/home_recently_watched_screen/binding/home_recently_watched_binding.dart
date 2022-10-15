import '../controller/home_recently_watched_controller.dart';
import 'package:get/get.dart';

class HomeRecentlyWatchedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeRecentlyWatchedController());
  }
}

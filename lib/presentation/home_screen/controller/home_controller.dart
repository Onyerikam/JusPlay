import '/core/app_export.dart';import 'package:jusplay/presentation/home_screen/models/home_model.dart';import 'package:jusplay/widgets/custom_bottom_bar.dart';class HomeController extends GetxController {Rx<HomeModel> homeModelObj = HomeModel().obs;

Rx<int> silderIndex = 0.obs;

Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }

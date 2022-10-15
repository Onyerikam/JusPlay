import '/core/app_export.dart';import 'package:jusplay/presentation/downloading_screen/models/downloading_model.dart';import 'package:jusplay/widgets/custom_bottom_bar.dart';class DownloadingController extends GetxController {Rx<DownloadingModel> downloadingModelObj = DownloadingModel().obs;

Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }

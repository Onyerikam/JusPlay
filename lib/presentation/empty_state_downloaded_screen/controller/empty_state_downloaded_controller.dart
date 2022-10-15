import '/core/app_export.dart';import 'package:jusplay/presentation/empty_state_downloaded_screen/models/empty_state_downloaded_model.dart';import 'package:jusplay/widgets/custom_bottom_bar.dart';class EmptyStateDownloadedController extends GetxController {Rx<EmptyStateDownloadedModel> emptyStateDownloadedModelObj = EmptyStateDownloadedModel().obs;

Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }

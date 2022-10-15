import '/core/app_export.dart';import 'package:jusplay/presentation/empty_state_downloading_screen/models/empty_state_downloading_model.dart';import 'package:jusplay/widgets/custom_bottom_bar.dart';class EmptyStateDownloadingController extends GetxController {Rx<EmptyStateDownloadingModel> emptyStateDownloadingModelObj = EmptyStateDownloadingModel().obs;

Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }

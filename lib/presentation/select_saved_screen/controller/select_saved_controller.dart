import '/core/app_export.dart';import 'package:jusplay/presentation/select_saved_screen/models/select_saved_model.dart';import 'package:jusplay/widgets/custom_bottom_bar.dart';class SelectSavedController extends GetxController {Rx<SelectSavedModel> selectSavedModelObj = SelectSavedModel().obs;

Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

RxBool checkbox = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }

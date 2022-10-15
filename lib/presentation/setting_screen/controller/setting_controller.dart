import '/core/app_export.dart';import 'package:jusplay/presentation/setting_screen/models/setting_model.dart';class SettingController extends GetxController {Rx<SettingModel> settingModelObj = SettingModel().obs;

RxBool isSelectedSwitch = false.obs;

RxBool isSelectedSwitch1 = false.obs;

RxBool isSelectedSwitch2 = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }

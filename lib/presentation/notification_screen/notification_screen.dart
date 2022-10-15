import '../notification_screen/widgets/notification_item_widget.dart';import 'controller/notification_controller.dart';import 'models/notification_item_model.dart';import 'package:flutter/material.dart';import 'package:jusplay/core/app_export.dart';import 'package:jusplay/widgets/custom_icon_button.dart';class NotificationScreen extends GetWidget<NotificationController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.black900, body: Container(width: size.width, child: SingleChildScrollView(child: Padding(padding: getPadding(left: 25, top: 8, right: 25), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.end, children: [Container(width: size.width, margin: getMargin(right: 10), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [CustomIconButton(height: 35, width: 35, onTap: () {onTapBtntf();}, child: CommonImageView(svgPath: ImageConstant.imgArrowleft)), Padding(padding: getPadding(top: 8, bottom: 8), child: Text("lbl_edit_profile".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium18))])), Container(width: double.infinity, margin: getMargin(top: 31), decoration: AppDecoration.fillBlack900, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Obx(() => ListView.builder(physics: BouncingScrollPhysics(), shrinkWrap: true, itemCount: controller.notificationModelObj.value.notificationItemList.length, itemBuilder: (context, index) {NotificationItemModel model = controller.notificationModelObj.value.notificationItemList[index]; return NotificationItemWidget(model);})))]))])))))); } 
onTapBtntf() { Get.back(); } 
 }
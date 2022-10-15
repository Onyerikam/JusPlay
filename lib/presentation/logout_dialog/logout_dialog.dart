import 'controller/logout_controller.dart';import 'package:flutter/material.dart';import 'package:jusplay/core/app_export.dart';import 'package:jusplay/widgets/custom_button.dart';
// ignore_for_file: must_be_immutable
class LogoutDialog extends StatelessWidget {LogoutDialog(this.controller);

LogoutController controller;

@override Widget build(BuildContext context) { return Container(width: double.infinity, decoration: AppDecoration.fillBluegray800.copyWith(borderRadius: BorderRadiusStyle.roundedBorder30), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(left: 19, top: 34, right: 19), child: CommonImageView(svgPath: ImageConstant.imgVolume98X98, height: getSize(98.00), width: getSize(98.00))), Padding(padding: getPadding(left: 19, top: 26, right: 17), child: Text("msg_are_you_sure_yo".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium18)), CustomButton(width: 263, text: "lbl_no".tr, margin: getMargin(left: 19, top: 36, right: 19), onTap: onTapBtnNo), Container(width: getHorizontalSize(28.00), margin: getMargin(left: 19, top: 32, right: 19, bottom: 20), decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(8.00))), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: GestureDetector(onTap: () {onTapTxtYes();}, child: Text("lbl_yes".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular16)))]))])); } 
onTapBtnNo() { Get.toNamed(AppRoutes.downloadingScreen); } 
onTapTxtYes() { Get.toNamed(AppRoutes.emptyStateDownloadingScreen); } 
 }

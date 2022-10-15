import 'controller/saved_empty_controller.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';
import 'package:jusplay/widgets/custom_bottom_bar.dart';

class SavedEmptyScreen extends GetWidget<SavedEmptyController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 59,
                right: 59,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 36,
                      right: 36,
                    ),
                    child: Text(
                      "lbl_save".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium18,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 36,
                      top: 194,
                      right: 36,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgMaskgroup2,
                      height: getSize(
                        184.00,
                      ),
                      width: getSize(
                        184.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 36,
                      top: 34,
                      right: 36,
                    ),
                    child: Text(
                      "lbl_not_save".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium16,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        top: 17,
                      ),
                      child: Text(
                        "msg_let_s_find_and".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular12Bluegray101,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            controller.type.value = type;
          },
        ),
      ),
    );
  }

  ///Handling view based on bottom click actions
  Widget getCurrentWidget(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return getDefaultWidget();
      case BottomBarEnum.Search:
        return getDefaultWidget();
      case BottomBarEnum.Saved:
        return getDefaultWidget();
      case BottomBarEnum.Downloads:
        return getDefaultWidget();
      case BottomBarEnum.Me:
        return getDefaultWidget();
      default:
        return getDefaultWidget();
    }
  }
}

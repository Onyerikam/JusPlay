import '../controller/history_controller.dart';
import '../models/history_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';

// ignore: must_be_immutable
class HistoryItemWidget extends StatelessWidget {
  HistoryItemWidget(this.historyItemModelObj);

  HistoryItemModel historyItemModelObj;

  var controller = Get.find<HistoryController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: getMargin(
          top: 8.0,
          bottom: 8.0,
        ),
        decoration: AppDecoration.fillWhiteA70065.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder20,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: getPadding(
                left: 10,
                top: 10,
                bottom: 10,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    15.00,
                  ),
                ),
                child: CommonImageView(
                  imagePath: ImageConstant.imgRectangle121036,
                  height: getSize(
                    112.00,
                  ),
                  width: getSize(
                    112.00,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 10,
                top: 17,
                bottom: 16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      154.00,
                    ),
                    child: Text(
                      "msg_mystery_of_muye".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular12WhiteA700,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 16,
                      right: 10,
                    ),
                    child: Text(
                      "msg_action_adventu".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular12Bluegray300,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 32,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_2_05_32".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsRegular10Bluegray300,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 8,
                            top: 1,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgVector106,
                            height: getVerticalSize(
                              10.00,
                            ),
                            width: getHorizontalSize(
                              1.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 6,
                            top: 1,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_1_2gb".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsRegular10Bluegray300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 17,
                top: 20,
                right: 20,
                bottom: 100,
              ),
              child: CommonImageView(
                svgPath: ImageConstant.imgPause,
                height: getVerticalSize(
                  12.00,
                ),
                width: getHorizontalSize(
                  2.00,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

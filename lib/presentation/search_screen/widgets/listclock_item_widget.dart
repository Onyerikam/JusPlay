import '../controller/search_controller.dart';
import '../models/listclock_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';

// ignore: must_be_immutable
class ListclockItemWidget extends StatelessWidget {
  ListclockItemWidget(this.listclockItemModelObj);

  ListclockItemModel listclockItemModelObj;

  var controller = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 7.5,
        bottom: 7.5,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: AppDecoration.fillWhiteA70063.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder14,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: getPadding(
                    left: 15,
                    top: 8,
                    bottom: 8,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgClock,
                    height: getSize(
                      14.00,
                    ),
                    width: getSize(
                      14.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 10,
                    top: 8,
                    right: 25,
                    bottom: 9,
                  ),
                  child: Text(
                    "lbl_marvel".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular12WhiteA700,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: getMargin(
              left: 10,
            ),
            decoration: AppDecoration.fillWhiteA70063.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder14,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: getPadding(
                    left: 15,
                    top: 8,
                    bottom: 8,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgClock,
                    height: getSize(
                      14.00,
                    ),
                    width: getSize(
                      14.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 10,
                    top: 9,
                    right: 20,
                    bottom: 6,
                  ),
                  child: Text(
                    "lbl_captain_america".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular12WhiteA700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

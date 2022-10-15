import '../controller/choose_plan_controller.dart';
import '../models/choose_plan_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';
import 'package:jusplay/widgets/custom_button.dart';

// ignore: must_be_immutable
class ChoosePlanItemWidget extends StatelessWidget {
  ChoosePlanItemWidget(this.choosePlanItemModelObj,
      {this.onTapBtnSubscribeplan});

  ChoosePlanItemModel choosePlanItemModelObj;

  var controller = Get.find<ChoosePlanController>();

  VoidCallback? onTapBtnSubscribeplan;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 7.5,
        bottom: 7.5,
      ),
      decoration: AppDecoration.outlineBluegray20019.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              left: 25,
              top: 29,
              right: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        right: 10,
                      ),
                      child: Text(
                        "lbl_weekly".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium14WhiteA700,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 7,
                      ),
                      child: Text(
                        "msg_including_tax_a".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular10Bluegray103,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: getMargin(
                    top: 4,
                    bottom: 8,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_50".tr,
                          style: TextStyle(
                            color: ColorConstant.whiteA700,
                            fontSize: getFontSize(
                              25,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: "lbl_week".tr,
                          style: TextStyle(
                            color: ColorConstant.bluegray100,
                            fontSize: getFontSize(
                              10,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          CustomButton(
            width: 275,
            text: "lbl_subscribe_plan".tr,
            margin: getMargin(
              left: 25,
              top: 20,
              right: 25,
              bottom: 22,
            ),
            shape: ButtonShape.CircleBorder20,
            padding: ButtonPadding.PaddingAll11,
            fontStyle: ButtonFontStyle.PoppinsRegular14,
            onTap: onTapBtnSubscribeplan,
          ),
        ],
      ),
    );
  }
}

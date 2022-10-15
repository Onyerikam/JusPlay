import '../controller/select_saved_controller.dart';
import '../models/select_saved_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';
import 'package:jusplay/widgets/custom_button.dart';
import 'package:jusplay/widgets/custom_checkbox.dart';

// ignore: must_be_immutable
class SelectSavedItemWidget extends StatelessWidget {
  SelectSavedItemWidget(this.selectSavedItemModelObj);

  SelectSavedItemModel selectSavedItemModelObj;

  var controller = Get.find<SelectSavedController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Obx(
            () => CustomCheckbox(
              iconSize: 24,
              value: controller.checkbox.value,
              padding: getPadding(
                top: 54,
                bottom: 54,
              ),
              variant: CheckboxVariant.OutlineWhiteA700,
              onChange: (value) {
                controller.checkbox.value = value;
              },
            ),
          ),
          Container(
            margin: getMargin(
              left: 20,
            ),
            decoration: AppDecoration.fillWhiteA70065.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder20,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: getPadding(
                    left: 10,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            15.00,
                          ),
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imgRectangle12103112X112,
                          height: getSize(
                            112.00,
                          ),
                          width: getSize(
                            112.00,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 10,
                          top: 5,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                right: 10,
                              ),
                              child: Text(
                                "lbl_captain_marvel".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium12WhiteA700,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 8,
                                right: 10,
                              ),
                              child: Text(
                                "msg_action_adventu".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular12Bluegray301,
                              ),
                            ),
                            CustomButton(
                              width: 119,
                              text: "lbl_watch_now".tr,
                              margin: getMargin(
                                top: 41,
                              ),
                              shape: ButtonShape.CircleBorder15,
                              padding: ButtonPadding.PaddingAll11,
                              fontStyle: ButtonFontStyle.PoppinsRegular12,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 52,
                    top: 18,
                    right: 1,
                    bottom: 102,
                  ),
                  child: CommonImageView(
                    imagePath: ImageConstant.imgPauseWhiteA700,
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
        ],
      ),
    );
  }
}

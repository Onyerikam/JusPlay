import 'controller/payment_succesful_popup_controller.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';
import 'package:jusplay/widgets/custom_button.dart';
import 'package:jusplay/widgets/custom_icon_button.dart';
import 'package:jusplay/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class PaymentSuccesfulPopupDialog extends StatelessWidget {
  PaymentSuccesfulPopupDialog(this.controller);

  PaymentSuccesfulPopupController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: AppDecoration.fillBluegray800.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 29,
                top: 34,
                right: 29,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: getPadding(
                        left: 43,
                        right: 7,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 5,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgVector92,
                              height: getVerticalSize(
                                5.00,
                              ),
                              width: getHorizontalSize(
                                6.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 26,
                              bottom: 2,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgMinimize,
                              height: getVerticalSize(
                                8.00,
                              ),
                              width: getHorizontalSize(
                                7.00,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        top: 1,
                        right: 1,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              bottom: 41,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgMinimize,
                              height: getVerticalSize(
                                8.00,
                              ),
                              width: getHorizontalSize(
                                7.00,
                              ),
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              45.00,
                            ),
                            width: getHorizontalSize(
                              83.00,
                            ),
                            margin: getMargin(
                              top: 4,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 16,
                                      top: 10,
                                      right: 16,
                                      bottom: 1,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgReply,
                                      height: getVerticalSize(
                                        20.00,
                                      ),
                                      width: getHorizontalSize(
                                        11.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 16,
                                      top: 10,
                                      right: 16,
                                      bottom: 1,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgSignal,
                                      height: getVerticalSize(
                                        20.00,
                                      ),
                                      width: getHorizontalSize(
                                        11.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 27,
                                      top: 10,
                                      right: 27,
                                      bottom: 1,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgVector86,
                                      height: getVerticalSize(
                                        24.00,
                                      ),
                                      width: getHorizontalSize(
                                        6.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 27,
                                      top: 10,
                                      right: 27,
                                      bottom: 1,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgVector89,
                                      height: getVerticalSize(
                                        24.00,
                                      ),
                                      width: getHorizontalSize(
                                        6.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 39,
                                      top: 10,
                                      right: 39,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: getSize(
                                            1.00,
                                          ),
                                          width: getSize(
                                            1.00,
                                          ),
                                          margin: getMargin(
                                            right: 1,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.amber300,
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                0.95,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: getVerticalSize(
                                            18.00,
                                          ),
                                          width: getHorizontalSize(
                                            1.00,
                                          ),
                                          margin: getMargin(
                                            left: 1,
                                            top: 1,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.deepOrange400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 30,
                                      right: 30,
                                      bottom: 10,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: CommonImageView(
                                            svgPath: ImageConstant.imgStar1,
                                            height: getSize(
                                              22.00,
                                            ),
                                            width: getSize(
                                              22.00,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: getSize(
                                            1.00,
                                          ),
                                          width: getSize(
                                            1.00,
                                          ),
                                          margin: getMargin(
                                            left: 10,
                                            right: 10,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.green300,
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                0.95,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 11,
                                      right: 10,
                                      bottom: 11,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgStar2,
                                      height: getSize(
                                        21.00,
                                      ),
                                      width: getSize(
                                        21.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 10,
                                      top: 11,
                                      bottom: 11,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgStar3,
                                      height: getSize(
                                        21.00,
                                      ),
                                      width: getSize(
                                        21.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 13,
                                      top: 7,
                                      right: 13,
                                      bottom: 10,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgVector90,
                                      height: getVerticalSize(
                                        6.00,
                                      ),
                                      width: getHorizontalSize(
                                        5.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 17,
                                      top: 7,
                                      right: 17,
                                      bottom: 10,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgVector91,
                                      height: getSize(
                                        4.00,
                                      ),
                                      width: getSize(
                                        4.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: getSize(
                                      1.00,
                                    ),
                                    width: getSize(
                                      1.00,
                                    ),
                                    margin: getMargin(
                                      left: 25,
                                      top: 17,
                                      right: 25,
                                      bottom: 17,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.amberA700,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          0.95,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: getSize(
                                      1.00,
                                    ),
                                    width: getSize(
                                      1.00,
                                    ),
                                    margin: getMargin(
                                      left: 24,
                                      top: 17,
                                      right: 24,
                                      bottom: 17,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.blue400,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          0.95,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: getSize(
                                      1.00,
                                    ),
                                    width: getSize(
                                      1.00,
                                    ),
                                    margin: getMargin(
                                      left: 23,
                                      top: 15,
                                      right: 23,
                                      bottom: 15,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.deepOrange400,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          0.95,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: getSize(
                                      1.00,
                                    ),
                                    width: getSize(
                                      1.00,
                                    ),
                                    margin: getMargin(
                                      left: 22,
                                      top: 15,
                                      right: 22,
                                      bottom: 15,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.deepOrange400,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          0.95,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: getPadding(
                        left: 6,
                        top: 2,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 2,
                              bottom: 26,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgMinimize,
                              height: getVerticalSize(
                                8.00,
                              ),
                              width: getHorizontalSize(
                                7.00,
                              ),
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              37.00,
                            ),
                            width: getHorizontalSize(
                              63.00,
                            ),
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                Obx(
                                  () => CustomSwitch(
                                    margin: getMargin(
                                      left: 5,
                                      right: 5,
                                    ),
                                    alignment: Alignment.center,
                                    value: controller.isSelectedSwitch.value,
                                    onChanged: (value) {
                                      controller.isSelectedSwitch.value = value;
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      right: 10,
                                      bottom: 10,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgFolder,
                                      height: getVerticalSize(
                                        11.00,
                                      ),
                                      width: getHorizontalSize(
                                        31.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 10,
                                      bottom: 10,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgTicket,
                                      height: getVerticalSize(
                                        11.00,
                                      ),
                                      width: getHorizontalSize(
                                        31.00,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 14,
                              bottom: 14,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgMinimize,
                              height: getVerticalSize(
                                8.00,
                              ),
                              width: getHorizontalSize(
                                7.00,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: getHorizontalSize(
                213.00,
              ),
              margin: getMargin(
                left: 29,
                top: 26,
                right: 29,
              ),
              child: Text(
                "msg_congrats_your_p".tr,
                maxLines: null,
                textAlign: TextAlign.center,
                style: AppStyle.txtPoppinsMedium18WhiteA700ab,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 29,
              top: 41,
              right: 29,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomIconButton(
                  height: 24,
                  width: 24,
                  variant: IconButtonVariant.FillWhiteA70063,
                  shape: IconButtonShape.CircleBorder12,
                  padding: IconButtonPadding.PaddingAll7,
                  child: CommonImageView(
                    svgPath: ImageConstant.imgArrowleft,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 15,
                    top: 6,
                    bottom: 3,
                  ),
                  child: Text(
                    "msg_active_on_20_fe".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular12WhiteA700a2,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 29,
              top: 20,
              right: 29,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomIconButton(
                  height: 24,
                  width: 24,
                  variant: IconButtonVariant.FillWhiteA70063,
                  shape: IconButtonShape.CircleBorder12,
                  padding: IconButtonPadding.PaddingAll7,
                  child: CommonImageView(
                    svgPath: ImageConstant.imgArrowleft,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 15,
                    top: 5,
                    bottom: 6,
                  ),
                  child: Text(
                    "lbl_auto_extend".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular12WhiteA700a2,
                  ),
                ),
              ],
            ),
          ),
          CustomButton(
            width: 263,
            text: "lbl_watch_now".tr,
            margin: getMargin(
              left: 29,
              top: 36,
              right: 29,
              bottom: 20,
            ),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}

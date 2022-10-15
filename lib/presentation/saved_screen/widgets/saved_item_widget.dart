import '../controller/saved_controller.dart';
import '../models/saved_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';
import 'package:jusplay/widgets/custom_button.dart';

// ignore: must_be_immutable
class SavedItemWidget extends StatelessWidget {
  SavedItemWidget(this.savedItemModelObj);

  SavedItemModel savedItemModelObj;

  var controller = Get.find<SavedController>();

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
          crossAxisAlignment: CrossAxisAlignment.end,
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
                  imagePath: ImageConstant.imgRectangle12103,
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
                top: 18,
                bottom: 10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      136.00,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_captain".tr,
                            style: TextStyle(
                              color: ColorConstant.whiteA700,
                              fontSize: getFontSize(
                                12,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: "msg_america_the_w2".tr,
                            style: TextStyle(
                              color: ColorConstant.whiteA700,
                              fontSize: getFontSize(
                                12,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 13,
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
                      top: 20,
                      right: 10,
                    ),
                    shape: ButtonShape.CircleBorder15,
                    padding: ButtonPadding.PaddingAll11,
                    fontStyle: ButtonFontStyle.PoppinsRegular12,
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 35,
                top: 18,
                right: 20,
                bottom: 102,
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

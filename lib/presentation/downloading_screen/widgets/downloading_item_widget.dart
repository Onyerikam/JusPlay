import '../controller/downloading_controller.dart';
import '../models/downloading_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';

// ignore: must_be_immutable
class DownloadingItemWidget extends StatelessWidget {
  DownloadingItemWidget(this.downloadingItemModelObj);

  DownloadingItemModel downloadingItemModelObj;

  var controller = Get.find<DownloadingController>();

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
                  imagePath: ImageConstant.imgRectangle121031,
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
                bottom: 16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      162.00,
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
                            text: "msg_america_the_f".tr,
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
                      top: 10,
                      right: 10,
                    ),
                    child: CommonImageView(
                      imagePath: ImageConstant.imgStudiologos27,
                      height: getVerticalSize(
                        12.00,
                      ),
                      width: getHorizontalSize(
                        52.00,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: getHorizontalSize(
                        161.00,
                      ),
                      margin: getMargin(
                        top: 15,
                        right: 1,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 9,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CommonImageView(
                                  svgPath: ImageConstant.imgGroup427318882,
                                  height: getVerticalSize(
                                    2.00,
                                  ),
                                  width: getHorizontalSize(
                                    128.00,
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    128.00,
                                  ),
                                  margin: getMargin(
                                    top: 2,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        "lbl_720k_s".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular10,
                                      ),
                                      Container(
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "lbl_250mb".tr,
                                                style: TextStyle(
                                                  color:
                                                      ColorConstant.bluegray300,
                                                  fontSize: getFontSize(
                                                    10,
                                                  ),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "lbl".tr,
                                                style: TextStyle(
                                                  color:
                                                      ColorConstant.bluegray300,
                                                  fontSize: getFontSize(
                                                    10,
                                                  ),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "lbl_1_5gb".tr,
                                                style: TextStyle(
                                                  color:
                                                      ColorConstant.whiteA700,
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
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              bottom: 10,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgVolume,
                              height: getSize(
                                18.00,
                              ),
                              width: getSize(
                                18.00,
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
            Padding(
              padding: getPadding(
                left: 13,
                top: 18,
                right: 15,
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

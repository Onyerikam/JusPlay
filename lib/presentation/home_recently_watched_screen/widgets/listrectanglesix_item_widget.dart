import '../controller/home_recently_watched_controller.dart';
import '../models/listrectanglesix_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';

// ignore: must_be_immutable
class ListrectanglesixItemWidget extends StatelessWidget {
  ListrectanglesixItemWidget(this.listrectanglesixItemModelObj);

  ListrectanglesixItemModel listrectanglesixItemModelObj;

  var controller = Get.find<HomeRecentlyWatchedController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 10,
          bottom: 1,
        ),
        decoration: AppDecoration.fillBluegray901.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: getVerticalSize(
                  86.00,
                ),
                width: getHorizontalSize(
                  214.00,
                ),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            getHorizontalSize(
                              10.00,
                            ),
                          ),
                          topRight: Radius.circular(
                            getHorizontalSize(
                              10.00,
                            ),
                          ),
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imgRectangle6,
                          height: getVerticalSize(
                            86.00,
                          ),
                          width: getHorizontalSize(
                            214.00,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: getMargin(
                          bottom: 1,
                        ),
                        decoration: AppDecoration.fillBluegray90063.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: getVerticalSize(
                                2.00,
                              ),
                              width: getHorizontalSize(
                                194.00,
                              ),
                              margin: getMargin(
                                left: 10,
                                top: 77,
                                right: 10,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA70087,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 10,
                                right: 10,
                                bottom: 6,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgVector94,
                                height: getVerticalSize(
                                  2.00,
                                ),
                                width: getHorizontalSize(
                                  47.00,
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
            Container(
              width: getHorizontalSize(
                192.00,
              ),
              margin: getMargin(
                left: 10,
                top: 10,
                right: 10,
                bottom: 11,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    10.00,
                  ),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: getHorizontalSize(
                        188.00,
                      ),
                      margin: getMargin(
                        right: 4,
                      ),
                      child: Text(
                        "msg_docotr_strange".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium11,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          margin: getMargin(
                            top: 10,
                            bottom: 1,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                4.42,
                              ),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "lbl_1_50_35".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsLight8,
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 9,
                                  top: 1,
                                ),
                                child: Text(
                                  "lbl_2021".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsLight8,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              10.00,
                            ),
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgCall,
                            height: getSize(
                              20.00,
                            ),
                            width: getSize(
                              20.00,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import '../controller/notification_controller.dart';
import '../models/notification_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';

// ignore: must_be_immutable
class NotificationItemWidget extends StatelessWidget {
  NotificationItemWidget(this.notificationItemModelObj);

  NotificationItemModel notificationItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        decoration: AppDecoration.fillWhiteA70065.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(
                  left: 15,
                  top: 15,
                  right: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: getMargin(
                        bottom: 6,
                      ),
                      color: ColorConstant.whiteA70063,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.circleBorder14,
                      ),
                      child: Container(
                        height: getSize(
                          30.00,
                        ),
                        width: getSize(
                          30.00,
                        ),
                        decoration: AppDecoration.fillWhiteA70063.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder14,
                        ),
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: getPadding(
                                  all: 11,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgSettings6X6,
                                  height: getSize(
                                    6.00,
                                  ),
                                  width: getSize(
                                    6.00,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: CommonImageView(
                                svgPath: ImageConstant.imgStar11,
                                height: getSize(
                                  30.00,
                                ),
                                width: getSize(
                                  30.00,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        170.00,
                      ),
                      margin: getMargin(
                        left: 20,
                        top: 3,
                      ),
                      child: Text(
                        "msg_let_s_get_100".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular12WhiteA700,
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
                  left: 65,
                  top: 13,
                  right: 65,
                  bottom: 15,
                ),
                child: Text(
                  "lbl_10_minutes_ago".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsLight10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

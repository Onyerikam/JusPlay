import '../controller/about_controller.dart';
import '../models/about_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';

// ignore: must_be_immutable
class AboutItemWidget extends StatelessWidget {
  AboutItemWidget(this.aboutItemModelObj);

  AboutItemModel aboutItemModelObj;

  var controller = Get.find<AboutController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: getVerticalSize(
            127.00,
          ),
          width: getHorizontalSize(
            104.00,
          ),
          margin: getMargin(),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      12.00,
                    ),
                  ),
                  child: CommonImageView(
                    imagePath: ImageConstant.imgRectangle12050,
                    height: getVerticalSize(
                      127.00,
                    ),
                    width: getHorizontalSize(
                      104.00,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  margin: getMargin(
                    top: 10,
                  ),
                  decoration:
                      AppDecoration.gradientBlack9002Bluegray900.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderBL12,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: getHorizontalSize(
                            52.00,
                          ),
                          margin: getMargin(
                            left: 15,
                            top: 31,
                            right: 15,
                            bottom: 10,
                          ),
                          child: Text(
                            "lbl_mena_massoud".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular12,
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
    );
  }
}

import '../controller/language_controller.dart';
import '../models/language_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';

// ignore: must_be_immutable
class LanguageItemWidget extends StatelessWidget {
  LanguageItemWidget(this.languageItemModelObj, {this.onTapEngland});

  LanguageItemModel languageItemModelObj;

  var controller = Get.find<LanguageController>();

  VoidCallback? onTapEngland;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapEngland!();
      },
      child: Container(
        decoration: AppDecoration.outlineWhiteA700cc.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: getMargin(
                  left: 20,
                  top: 15,
                  right: 20,
                  bottom: 15,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      20.00,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          20.00,
                        ),
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgBg,
                        height: getSize(
                          40.00,
                        ),
                        width: getSize(
                          40.00,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 15,
                        top: 15,
                        bottom: 11,
                      ),
                      child: Text(
                        "lbl_england".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium12WhiteA700.copyWith(
                          letterSpacing: 0.12,
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
    );
  }
}

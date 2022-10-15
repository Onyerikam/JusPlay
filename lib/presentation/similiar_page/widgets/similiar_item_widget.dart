import '../controller/similiar_controller.dart';
import '../models/similiar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';

// ignore: must_be_immutable
class SimiliarItemWidget extends StatelessWidget {
  SimiliarItemWidget(this.similiarItemModelObj);

  SimiliarItemModel similiarItemModelObj;

  var controller = Get.find<SimiliarController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: getMargin(
          left: 117,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Container(
          height: getVerticalSize(
            154.00,
          ),
          width: getHorizontalSize(
            108.00,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                10.00,
              ),
            ),
          ),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      10.00,
                    ),
                  ),
                  child: CommonImageView(
                    imagePath: ImageConstant.imgImage4154X108,
                    height: getVerticalSize(
                      154.00,
                    ),
                    width: getHorizontalSize(
                      108.00,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: getVerticalSize(
                    154.00,
                  ),
                  width: getHorizontalSize(
                    108.00,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.bluegray9002b,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        10.00,
                      ),
                    ),
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

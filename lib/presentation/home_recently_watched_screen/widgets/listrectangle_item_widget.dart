import '../controller/home_recently_watched_controller.dart';
import '../models/listrectangle_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';

// ignore: must_be_immutable
class ListrectangleItemWidget extends StatelessWidget {
  ListrectangleItemWidget(this.listrectangleItemModelObj);

  ListrectangleItemModel listrectangleItemModelObj;

  var controller = Get.find<HomeRecentlyWatchedController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          left: 139,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              10.00,
            ),
          ),
          child: CommonImageView(
            imagePath: ImageConstant.imgImage4,
            height: getVerticalSize(
              178.00,
            ),
            width: getHorizontalSize(
              124.00,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

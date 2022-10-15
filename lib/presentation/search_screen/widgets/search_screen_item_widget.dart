import '../controller/search_controller.dart';
import '../models/search_screen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';

// ignore: must_be_immutable
class SearchScreenItemWidget extends StatelessWidget {
  SearchScreenItemWidget(this.searchScreenItemModelObj);

  SearchScreenItemModel searchScreenItemModelObj;

  var controller = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              10.00,
            ),
          ),
          child: CommonImageView(
            imagePath: ImageConstant.imgRectangle12078135X98,
            height: getVerticalSize(
              135.00,
            ),
            width: getHorizontalSize(
              98.00,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

import '../controller/home_recently_watched_controller.dart';
import '../models/slidergroup872_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';

// ignore: must_be_immutable
class Slidergroup872ItemWidget extends StatelessWidget {
  Slidergroup872ItemWidget(this.slidergroup872ItemModelObj);

  Slidergroup872ItemModel slidergroup872ItemModelObj;

  var controller = Get.find<HomeRecentlyWatchedController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: CommonImageView(
        imagePath: ImageConstant.imgImage6297X375,
        height: getVerticalSize(
          297.00,
        ),
        width: getHorizontalSize(
          375.00,
        ),
      ),
    );
  }
}

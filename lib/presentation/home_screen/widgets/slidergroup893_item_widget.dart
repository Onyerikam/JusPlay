import '../controller/home_controller.dart';
import '../models/slidergroup893_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';

// ignore: must_be_immutable
class Slidergroup893ItemWidget extends StatelessWidget {
  Slidergroup893ItemWidget(this.slidergroup893ItemModelObj);

  Slidergroup893ItemModel slidergroup893ItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: CommonImageView(
        imagePath: ImageConstant.imgImage6,
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

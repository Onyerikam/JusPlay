import '../controller/category_comedy_controller.dart';
import '../models/gridrectangle_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';

// ignore: must_be_immutable
class GridrectangleItemWidget extends StatelessWidget {
  GridrectangleItemWidget(this.gridrectangleItemModelObj);

  GridrectangleItemModel gridrectangleItemModelObj;

  var controller = Get.find<CategoryComedyController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        ),
        child: CommonImageView(
          imagePath: ImageConstant.imgRectangle12078,
          height: getVerticalSize(
            140.00,
          ),
          width: getHorizontalSize(
            102.00,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

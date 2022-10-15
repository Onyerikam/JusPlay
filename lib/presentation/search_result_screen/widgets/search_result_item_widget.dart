import '../controller/search_result_controller.dart';
import '../models/search_result_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';

// ignore: must_be_immutable
class SearchResultItemWidget extends StatelessWidget {
  SearchResultItemWidget(this.searchResultItemModelObj);

  SearchResultItemModel searchResultItemModelObj;

  var controller = Get.find<SearchResultController>();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
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
    );
  }
}

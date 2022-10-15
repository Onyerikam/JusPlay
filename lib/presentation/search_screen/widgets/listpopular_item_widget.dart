import '../controller/search_controller.dart';
import '../models/listpopular_item_model.dart';
import '../models/search_screen_item_model.dart';
import '../widgets/search_screen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';

// ignore: must_be_immutable
class ListpopularItemWidget extends StatelessWidget {
  ListpopularItemWidget(this.listpopularItemModelObj);

  ListpopularItemModel listpopularItemModelObj;

  var controller = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 14.1499865,
        bottom: 14.1499865,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(
              right: 10,
            ),
            child: Text(
              "lbl_popular".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsRegular14WhiteA700,
            ),
          ),
          Container(
            height: getVerticalSize(
              150.00,
            ),
            width: getHorizontalSize(
              422.00,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  10.00,
                ),
              ),
            ),
            child: Obx(
              () => ListView.builder(
                padding: getPadding(
                  top: 15,
                ),
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: listpopularItemModelObj.searchScreenItemList.length,
                itemBuilder: (context, index) {
                  SearchScreenItemModel model =
                      listpopularItemModelObj.searchScreenItemList[index];
                  return SearchScreenItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

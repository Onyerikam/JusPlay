import '../controller/home_controller.dart';
import '../models/home_screen_item_model.dart';
import '../models/listmostpopular_item_model.dart';
import '../widgets/home_screen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';

// ignore: must_be_immutable
class ListmostpopularItemWidget extends StatelessWidget {
  ListmostpopularItemWidget(this.listmostpopularItemModelObj);

  ListmostpopularItemModel listmostpopularItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 14.330002,
        bottom: 14.330002,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "lbl_most_popular".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsSemiBold16,
                ),
                Padding(
                  padding: getPadding(
                    left: 196,
                    top: 2,
                    bottom: 3,
                  ),
                  child: Text(
                    "lbl_see_all".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular12WhiteA700,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: getVerticalSize(
              189.00,
            ),
            width: getHorizontalSize(
              404.00,
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
                  top: 11,
                ),
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount:
                    listmostpopularItemModelObj.homeScreenItemList.length,
                itemBuilder: (context, index) {
                  HomeScreenItemModel model =
                      listmostpopularItemModelObj.homeScreenItemList[index];
                  return HomeScreenItemWidget(
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

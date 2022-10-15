import 'controller/not_found_controller.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';
import 'package:jusplay/widgets/custom_bottom_bar.dart';
import 'package:jusplay/widgets/custom_search_view.dart';

class NotFoundScreen extends GetWidget<NotFoundController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 16,
                right: 16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomSearchView(
                    width: 343,
                    focusNode: FocusNode(),
                    controller: controller.searchController,
                    hintText: "lbl_inception".tr,
                    alignment: Alignment.centerLeft,
                    prefix: Container(
                      margin: getMargin(
                        left: 18,
                        top: 15,
                        right: 22,
                        bottom: 15,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgSearch,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      minWidth: getSize(
                        19.00,
                      ),
                      minHeight: getSize(
                        19.00,
                      ),
                    ),
                    suffix: Padding(
                      padding: EdgeInsets.only(
                        right: getHorizontalSize(
                          15.00,
                        ),
                      ),
                      child: IconButton(
                        onPressed: controller.searchController.clear,
                        icon: Icon(
                          Icons.clear,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      minWidth: getHorizontalSize(
                        23.00,
                      ),
                      minHeight: getVerticalSize(
                        23.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 60,
                      top: 172,
                      right: 60,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgMaskgroup,
                      height: getSize(
                        184.00,
                      ),
                      width: getSize(
                        184.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 60,
                      top: 46,
                      right: 60,
                    ),
                    child: Text(
                      "lbl_opsss".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsBold16,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 60,
                      top: 18,
                      right: 60,
                    ),
                    child: Text(
                      "msg_what_you_are_lo".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            controller.type.value = type;
          },
        ),
      ),
    );
  }

  ///Handling view based on bottom click actions
  Widget getCurrentWidget(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return getDefaultWidget();
      case BottomBarEnum.Search:
        return getDefaultWidget();
      case BottomBarEnum.Saved:
        return getDefaultWidget();
      case BottomBarEnum.Downloads:
        return getDefaultWidget();
      case BottomBarEnum.Me:
        return getDefaultWidget();
      default:
        return getDefaultWidget();
    }
  }
}

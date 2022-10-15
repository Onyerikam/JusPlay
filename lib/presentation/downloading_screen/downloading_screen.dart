import '../downloading_screen/widgets/downloading_item_widget.dart';
import 'controller/downloading_controller.dart';
import 'models/downloading_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';
import 'package:jusplay/widgets/custom_bottom_bar.dart';

class DownloadingScreen extends GetWidget<DownloadingController> {
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
                left: 25,
                right: 25,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 17,
                      right: 17,
                    ),
                    child: Text(
                      "lbl_download".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium18,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 17,
                      top: 39,
                      right: 11,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 2,
                            bottom: 21,
                          ),
                          child: Text(
                            "lbl_downloaded".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium14WhiteA70087,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 4,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 39,
                                  right: 39,
                                ),
                                child: Text(
                                  "lbl_downloading".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium14Red700,
                                ),
                              ),
                              Container(
                                height: getVerticalSize(
                                  2.00,
                                ),
                                width: getHorizontalSize(
                                  172.00,
                                ),
                                margin: getMargin(
                                  top: 17,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.red700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        top: 24,
                      ),
                      child: Obx(
                        () => ListView.builder(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: controller.downloadingModelObj.value
                              .downloadingItemList.length,
                          itemBuilder: (context, index) {
                            DownloadingItemModel model = controller
                                .downloadingModelObj
                                .value
                                .downloadingItemList[index];
                            return DownloadingItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
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

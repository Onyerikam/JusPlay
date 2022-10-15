import '../select_saved_screen/widgets/select_saved_item_widget.dart';
import 'controller/select_saved_controller.dart';
import 'models/select_saved_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';
import 'package:jusplay/widgets/custom_bottom_bar.dart';

class SelectSavedScreen extends GetWidget<SelectSavedController> {
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
                top: 16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: size.width,
                      margin: getMargin(
                        left: 25,
                        right: 25,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 7,
                            ),
                            child: Text(
                              "lbl_mark_all".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12WhiteA700,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              bottom: 1,
                            ),
                            child: Text(
                              "lbl_saved".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium18,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 7,
                            ),
                            child: Text(
                              "lbl_delete".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12WhiteA700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: double.infinity,
                      margin: getMargin(
                        left: 10,
                        top: 38,
                      ),
                      decoration: AppDecoration.fillBlack900,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Obx(
                              () => ListView.builder(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: controller.selectSavedModelObj.value
                                    .selectSavedItemList.length,
                                itemBuilder: (context, index) {
                                  SelectSavedItemModel model = controller
                                      .selectSavedModelObj
                                      .value
                                      .selectSavedItemList[index];
                                  return SelectSavedItemWidget(
                                    model,
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
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

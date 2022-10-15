import '../search_result_screen/widgets/search_result_item_widget.dart';
import 'controller/search_result_controller.dart';
import 'models/search_result_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';
import 'package:jusplay/widgets/custom_search_view.dart';

class SearchResultScreen extends GetWidget<SearchResultController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        body: Padding(
          padding: getPadding(
            left: 16,
            right: 15,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: double.infinity,
                  decoration: AppDecoration.fillBlack900,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomSearchView(
                        width: 343,
                        focusNode: FocusNode(),
                        controller: controller.searchController,
                        hintText: "lbl_comedy".tr,
                        margin: getMargin(
                          right: 1,
                        ),
                        alignment: Alignment.center,
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
                      Container(
                        width: double.infinity,
                        margin: getMargin(
                          top: 27,
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
                                "msg_results_for_co".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular14WhiteA700,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    10.00,
                                  ),
                                ),
                              ),
                              margin: getMargin(
                                top: 15,
                              ),
                              child: Obx(
                                () => GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisExtent: getVerticalSize(
                                      141.00,
                                    ),
                                    crossAxisCount: 3,
                                    mainAxisSpacing: getHorizontalSize(
                                      20.00,
                                    ),
                                    crossAxisSpacing: getHorizontalSize(
                                      20.00,
                                    ),
                                  ),
                                  physics: BouncingScrollPhysics(),
                                  itemCount: controller.searchResultModelObj
                                      .value.searchResultItemList.length,
                                  itemBuilder: (context, index) {
                                    SearchResultItemModel model = controller
                                        .searchResultModelObj
                                        .value
                                        .searchResultItemList[index];
                                    return SearchResultItemWidget(
                                      model,
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
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
    );
  }
}

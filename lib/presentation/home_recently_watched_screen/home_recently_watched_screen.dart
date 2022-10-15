import '../home_recently_watched_screen/widgets/listrectangle_item_widget.dart';
import '../home_recently_watched_screen/widgets/listrectanglesix_item_widget.dart';
import '../home_recently_watched_screen/widgets/slidergroup872_item_widget.dart';
import 'controller/home_recently_watched_controller.dart';
import 'models/listrectangle_item_model.dart';
import 'models/listrectanglesix_item_model.dart';
import 'models/slidergroup872_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';
import 'package:jusplay/widgets/custom_bottom_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeRecentlyWatchedScreen
    extends GetWidget<HomeRecentlyWatchedController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              decoration: AppDecoration.fillBlack900,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: getVerticalSize(
                        297.00,
                      ),
                      width: size.width,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: getVerticalSize(
                                5.00,
                              ),
                              margin: getMargin(
                                left: 155,
                                top: 15,
                                right: 155,
                                bottom: 15,
                              ),
                              child: SmoothIndicator(
                                offset: 0,
                                count: 5,
                                axisDirection: Axis.horizontal,
                                effect: ScrollingDotsEffect(
                                  spacing: 7.0700073,
                                  activeDotColor: ColorConstant.red700,
                                  dotColor: ColorConstant.gray3008d,
                                  dotHeight: getVerticalSize(
                                    5.00,
                                  ),
                                  dotWidth: getHorizontalSize(
                                    5.00,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Obx(
                            () => CarouselSlider.builder(
                              options: CarouselOptions(
                                height: getVerticalSize(
                                  297.00,
                                ),
                                initialPage: 0,
                                autoPlay: true,
                                viewportFraction: 1.0,
                                enableInfiniteScroll: false,
                                scrollDirection: Axis.horizontal,
                                onPageChanged: (index, reason) {
                                  controller.silderIndex.value = index;
                                },
                              ),
                              itemCount: controller.homeRecentlyWatchedModelObj
                                  .value.slidergroup872ItemList.length,
                              itemBuilder: (context, index, realIndex) {
                                Slidergroup872ItemModel model = controller
                                    .homeRecentlyWatchedModelObj
                                    .value
                                    .slidergroup872ItemList[index];
                                return Slidergroup872ItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 10,
                      top: 14,
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
                            "lbl_last_watched".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium14WhiteA700,
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            175.00,
                          ),
                          width: getHorizontalSize(
                            359.00,
                          ),
                          child: Obx(
                            () => ListView.builder(
                              padding: getPadding(
                                top: 15,
                                right: 10,
                                bottom: 1,
                              ),
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemCount: controller.homeRecentlyWatchedModelObj
                                  .value.listrectanglesixItemList.length,
                              itemBuilder: (context, index) {
                                ListrectanglesixItemModel model = controller
                                    .homeRecentlyWatchedModelObj
                                    .value
                                    .listrectanglesixItemList[index];
                                return ListrectanglesixItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: getPadding(
                      left: 10,
                      top: 27,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            31.00,
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
                              "lbl_catagories".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold16,
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              top: 16,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  14.00,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  padding: getPadding(
                                    left: 30,
                                    top: 7,
                                    right: 30,
                                    bottom: 9,
                                  ),
                                  decoration:
                                      AppDecoration.txtFillRed700.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtCircleBorder14,
                                  ),
                                  child: Text(
                                    "lbl_all".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtPoppinsRegular12WhiteA700,
                                  ),
                                ),
                                Container(
                                  padding: getPadding(
                                    left: 21,
                                    top: 7,
                                    right: 21,
                                    bottom: 9,
                                  ),
                                  decoration:
                                      AppDecoration.txtFillWhiteA70063.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtCircleBorder14,
                                  ),
                                  child: Text(
                                    "lbl_action".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtPoppinsRegular12WhiteA700,
                                  ),
                                ),
                                Container(
                                  padding: getPadding(
                                    left: 14,
                                    top: 8,
                                    right: 15,
                                    bottom: 6,
                                  ),
                                  decoration:
                                      AppDecoration.txtFillWhiteA70063.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtCircleBorder14,
                                  ),
                                  child: Text(
                                    "lbl_comedy".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtPoppinsRegular12WhiteA700,
                                  ),
                                ),
                                Container(
                                  padding: getPadding(
                                    left: 11,
                                    top: 7,
                                    right: 12,
                                    bottom: 8,
                                  ),
                                  decoration:
                                      AppDecoration.txtFillWhiteA70063.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtCircleBorder14,
                                  ),
                                  child: Text(
                                    "lbl_romance".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtPoppinsRegular12WhiteA700,
                                  ),
                                ),
                                Container(
                                  padding: getPadding(
                                    left: 24,
                                    top: 8,
                                    right: 24,
                                    bottom: 9,
                                  ),
                                  decoration:
                                      AppDecoration.txtFillWhiteA70063.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtCircleBorder14,
                                  ),
                                  child: Text(
                                    "lbl_horor".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style:
                                        AppStyle.txtPoppinsRegular12WhiteA700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: getMargin(
                      left: 10,
                      top: 20,
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
                              itemCount: controller.homeRecentlyWatchedModelObj
                                  .value.listrectangleItemList.length,
                              itemBuilder: (context, index) {
                                ListrectangleItemModel model = controller
                                    .homeRecentlyWatchedModelObj
                                    .value
                                    .listrectangleItemList[index];
                                return ListrectangleItemWidget(
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

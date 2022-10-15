import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged});

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgTrash,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSearch,
      title: "lbl_search".tr,
      type: BottomBarEnum.Search,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgBookmark,
      title: "lbl_saved".tr,
      type: BottomBarEnum.Saved,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgArrowdown,
      title: "lbl_downloads".tr,
      type: BottomBarEnum.Downloads,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser,
      title: "lbl_me".tr,
      type: BottomBarEnum.Me,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          color: ColorConstant.black900,
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 2,
                    ),
                    child: CommonImageView(
                      svgPath: bottomMenuList[index].icon,
                      height: getSize(
                        19.00,
                      ),
                      width: getSize(
                        19.00,
                      ),
                      color: ColorConstant.whiteA700,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 6,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular10WhiteA70099.copyWith(
                        color: ColorConstant.whiteA70099,
                      ),
                    ),
                  ),
                ],
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CommonImageView(
                    svgPath: bottomMenuList[index].icon,
                    height: getVerticalSize(
                      21.00,
                    ),
                    width: getHorizontalSize(
                      20.00,
                    ),
                    color: ColorConstant.whiteA700,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 5,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular10.copyWith(
                        color: ColorConstant.whiteA700,
                      ),
                    ),
                  ),
                ],
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged!(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Search,
  Saved,
  Downloads,
  Me,
}

class BottomMenuModel {
  BottomMenuModel({required this.icon, this.title, required this.type});

  String icon;

  String? title;

  BottomBarEnum type;
}

///Set default widget when screen is not configured with bottom menu
Widget getDefaultWidget() {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.all(10),
    child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Please replace the respective Widget here',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    ),
  );
}

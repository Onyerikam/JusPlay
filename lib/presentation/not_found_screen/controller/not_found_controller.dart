import '/core/app_export.dart';
import 'package:jusplay/presentation/not_found_screen/models/not_found_model.dart';
import 'package:jusplay/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class NotFoundController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<NotFoundModel> notFoundModelObj = NotFoundModel().obs;

  Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}

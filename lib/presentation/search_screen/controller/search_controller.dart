import '/core/app_export.dart';import 'package:jusplay/presentation/search_screen/models/search_model.dart';import 'package:jusplay/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';class SearchController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<SearchModel> searchModelObj = SearchModel().obs;

Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchController.dispose(); } 
 }

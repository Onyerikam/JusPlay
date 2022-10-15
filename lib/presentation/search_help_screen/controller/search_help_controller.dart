import '/core/app_export.dart';import 'package:jusplay/presentation/search_help_screen/models/search_help_model.dart';import 'package:flutter/material.dart';class SearchHelpController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<SearchHelpModel> searchHelpModelObj = SearchHelpModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchController.dispose(); } 
 }

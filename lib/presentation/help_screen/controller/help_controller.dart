import '/core/app_export.dart';import 'package:jusplay/presentation/help_screen/models/help_model.dart';import 'package:flutter/material.dart';class HelpController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<HelpModel> helpModelObj = HelpModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchController.dispose(); } 
 }

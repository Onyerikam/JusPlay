import '/core/app_export.dart';import 'package:jusplay/presentation/episode1_screen/models/episode1_model.dart';import 'package:flutter/material.dart';class Episode1Controller extends GetxController with  GetSingleTickerProviderStateMixin {Rx<Episode1Model> episode1ModelObj = Episode1Model().obs;

late TabController episodeController = Get.put(TabController(vsync: this, length: 3));

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }

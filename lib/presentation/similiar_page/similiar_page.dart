import '../similiar_page/widgets/similiar_item_widget.dart';import 'controller/similiar_controller.dart';import 'models/similiar_item_model.dart';import 'models/similiar_model.dart';import 'package:flutter/material.dart';import 'package:jusplay/core/app_export.dart';
// ignore_for_file: must_be_immutable
class SimiliarPage extends StatelessWidget {SimiliarController controller = Get.put(SimiliarController(SimiliarModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: Colors.transparent, body: Container(height: getVerticalSize(154.00), width: size.width, decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(10.00))), child: Obx(() => ListView.builder(scrollDirection: Axis.horizontal, physics: BouncingScrollPhysics(), itemCount: controller.similiarModelObj.value.similiarItemList.length, itemBuilder: (context, index) {SimiliarItemModel model = controller.similiarModelObj.value.similiarItemList[index]; return SimiliarItemWidget(model);}))))); } 
 }

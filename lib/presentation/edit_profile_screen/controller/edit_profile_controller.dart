import '/core/app_export.dart';import 'package:jusplay/presentation/edit_profile_screen/models/edit_profile_model.dart';import 'package:flutter/material.dart';class EditProfileController extends GetxController {TextEditingController group902Controller = TextEditingController();

TextEditingController group904Controller = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController group908Controller = TextEditingController();

TextEditingController dateController = TextEditingController();

Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); group902Controller.dispose(); group904Controller.dispose(); emailController.dispose(); group908Controller.dispose(); dateController.dispose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; editProfileModelObj.value.dropdownItemList.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); editProfileModelObj.value.dropdownItemList.refresh(); } 
 }

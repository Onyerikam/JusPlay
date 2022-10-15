import '/core/app_export.dart';import 'package:jusplay/presentation/payment_method_screen/models/payment_method_model.dart';import 'package:flutter/material.dart';class PaymentMethodController extends GetxController {TextEditingController haveavouchercodOneController = TextEditingController();

Rx<PaymentMethodModel> paymentMethodModelObj = PaymentMethodModel().obs;

RxString radioGroup = "".obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); haveavouchercodOneController.dispose(); } 
 }

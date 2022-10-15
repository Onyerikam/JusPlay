import '/core/app_export.dart';
import 'package:jusplay/presentation/payment_succesful_popup_dialog/models/payment_succesful_popup_model.dart';

class PaymentSuccesfulPopupController extends GetxController {
  Rx<PaymentSuccesfulPopupModel> paymentSuccesfulPopupModelObj =
      PaymentSuccesfulPopupModel().obs;

  RxBool isSelectedSwitch = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

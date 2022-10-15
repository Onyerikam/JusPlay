import '../controller/payment_method_controller.dart';
import '../models/payment_method_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';
import 'package:jusplay/widgets/custom_radio_button.dart';

// ignore: must_be_immutable
class PaymentMethodItemWidget extends StatelessWidget {
  PaymentMethodItemWidget(this.paymentMethodItemModelObj);

  PaymentMethodItemModel paymentMethodItemModelObj;

  var controller = Get.find<PaymentMethodController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: AppDecoration.outlineBluegray20019.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder20,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: getPadding(
                left: 25,
                top: 21,
                bottom: 20,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CommonImageView(
                    imagePath: ImageConstant.imgGoogle2,
                    height: getSize(
                      30.00,
                    ),
                    width: getSize(
                      30.00,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 10,
                      top: 8,
                      bottom: 5,
                    ),
                    child: Text(
                      "lbl_google_pay".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium14WhiteA700,
                    ),
                  ),
                ],
              ),
            ),
            CustomRadioButton(
              iconSize: 13,
              value: "text".tr,
              groupValue: controller.radioGroup.value,
              margin: getMargin(
                left: 153,
                top: 27,
                right: 25,
                bottom: 25,
              ),
              onChange: (value) {
                controller.radioGroup.value = value;
              },
            ),
          ],
        ),
      ),
    );
  }
}

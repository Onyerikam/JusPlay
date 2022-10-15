import 'controller/logo_controller.dart';
import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';
import 'package:jusplay/widgets/custom_icon_button.dart';

class LogoScreen extends GetWidget<LogoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.red700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(
                  height: 90,
                  width: 90,
                  margin: getMargin(
                    left: 142,
                    top: 361,
                    right: 142,
                    bottom: 20,
                  ),
                  variant: IconButtonVariant.OutlineWhiteA700,
                  shape: IconButtonShape.CircleBorder45,
                  padding: IconButtonPadding.PaddingAll24,
                  child: CommonImageView(
                    svgPath: ImageConstant.imgVector,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

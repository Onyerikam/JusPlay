import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';

class CustomCheckbox extends StatelessWidget {
  CustomCheckbox(
      {this.shape,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.padding,
      this.iconSize,
      this.value,
      this.onChange,
      this.text});

  CheckboxShape? shape;

  CheckboxVariant? variant;

  CheckboxFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? padding;

  double? iconSize;

  bool? value;

  Function(bool)? onChange;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildCheckboxWidget(),
          )
        : _buildCheckboxWidget();
  }

  _buildCheckboxWidget() {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: InkWell(
        onTap: () {
          value = !(value!);
          onChange!(value!);
        },
        child: Row(
          children: [
            SizedBox(
              height: getHorizontalSize(iconSize ?? 0),
              width: getHorizontalSize(iconSize ?? 0),
              child: Checkbox(
                shape: _setShape(),
                value: value ?? false,
                onChanged: (value) {
                  onChange!(value!);
                },
              ),
            ),
            Padding(
              padding: getPadding(
                left: 10,
              ),
              child: Text(
                text ?? "",
                textAlign: TextAlign.center,
                style: _setFontStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        );
    }
  }

  _setShape() {
    switch (variant) {
      case CheckboxVariant.FillWhiteA700:
        return RoundedRectangleBorder(
          borderRadius: _setOutlineBorderRadius(),
        );
      case CheckboxVariant.OutlineWhiteA700:
        return RoundedRectangleBorder(
          side: BorderSide(
            color: ColorConstant.whiteA700,
            width: 0.5,
          ),
          borderRadius: _setOutlineBorderRadius(),
        );
      case CheckboxVariant.OutlineWhiteA700_1:
        return RoundedRectangleBorder(
          side: BorderSide(
            color: ColorConstant.whiteA700,
            width: 1.5,
          ),
          borderRadius: _setOutlineBorderRadius(),
        );
      case CheckboxVariant.OutlineWhiteA700_2:
        return RoundedRectangleBorder(
          side: BorderSide(
            color: ColorConstant.whiteA700,
            width: 0.5,
          ),
          borderRadius: _setOutlineBorderRadius(),
        );
      case CheckboxVariant.OutlineWhiteA700_3:
        return RoundedRectangleBorder(
          side: BorderSide(
            color: ColorConstant.whiteA700,
            width: 0.5,
          ),
          borderRadius: _setOutlineBorderRadius(),
        );
      case CheckboxVariant.OutlineWhiteA700_4:
        return RoundedRectangleBorder(
          side: BorderSide(
            color: ColorConstant.whiteA700,
            width: 0.5,
          ),
          borderRadius: _setOutlineBorderRadius(),
        );
      default:
        return RoundedRectangleBorder(
          side: BorderSide(
            color: ColorConstant.bluegray104,
            width: 1,
          ),
          borderRadius: _setOutlineBorderRadius(),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case CheckboxFontStyle.PoppinsMedium12:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700A2,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
    }
  }
}

enum CheckboxShape { RoundedBorder5 }
enum CheckboxVariant {
  OutlineBluegray104,
  FillWhiteA700,
  OutlineWhiteA700,
  OutlineWhiteA700_1,
  OutlineWhiteA700_2,
  OutlineWhiteA700_3,
  OutlineWhiteA700_4
}
enum CheckboxFontStyle { PoppinsRegular12, PoppinsMedium12 }

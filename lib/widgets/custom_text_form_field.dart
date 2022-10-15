import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.padding,
      this.shape,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldPadding? padding;

  TextFormFieldShape? shape;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: getHorizontalSize(width ?? 0),
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.PoppinsRegular12:
        return TextStyle(
          color: ColorConstant.bluegray103,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.PoppinsMedium14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      default:
        return TextStyle(
          color: ColorConstant.bluegray100,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.FillWhiteA70063:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.UnderLineWhiteA7006c:
        return UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.whiteA7006c,
          ),
        );
      default:
        return UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.whiteA70087,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.FillWhiteA70063:
        return ColorConstant.whiteA70063;
      default:
        return null;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.UnderLineWhiteA70087:
        return false;
      case TextFormFieldVariant.FillWhiteA70063:
        return true;
      case TextFormFieldVariant.UnderLineWhiteA7006c:
        return false;
      default:
        return false;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingTB23:
        return getPadding(
          left: 4,
          top: 4,
          right: 4,
          bottom: 23,
        );
      case TextFormFieldPadding.PaddingTB19:
        return getPadding(
          left: 6,
          top: 6,
          right: 6,
          bottom: 19,
        );
      case TextFormFieldPadding.PaddingTB14:
        return getPadding(
          left: 13,
          top: 13,
          right: 13,
          bottom: 14,
        );
      case TextFormFieldPadding.PaddingB14:
        return getPadding(
          bottom: 14,
        );
      case TextFormFieldPadding.PaddingB10:
        return getPadding(
          bottom: 10,
        );
      default:
        return getPadding(
          bottom: 23,
        );
    }
  }
}

enum TextFormFieldPadding {
  PaddingB23,
  PaddingTB23,
  PaddingTB19,
  PaddingTB14,
  PaddingB14,
  PaddingB10,
}
enum TextFormFieldShape {
  CircleBorder20,
}
enum TextFormFieldVariant {
  UnderLineWhiteA70087,
  FillWhiteA70063,
  UnderLineWhiteA7006c,
}
enum TextFormFieldFontStyle {
  PoppinsRegular14,
  PoppinsRegular12,
  PoppinsMedium14,
}

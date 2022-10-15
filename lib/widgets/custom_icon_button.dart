import 'package:flutter/material.dart';
import 'package:jusplay/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.height,
      this.width,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? height;

  double? width;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        constraints: BoxConstraints(
          minHeight: getSize(height ?? 0),
          minWidth: getSize(width ?? 0),
        ),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll7:
        return getPadding(
          all: 7,
        );
      case IconButtonPadding.PaddingAll24:
        return getPadding(
          all: 24,
        );
      default:
        return getPadding(
          all: 10,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.OutlineWhiteA700:
        return ColorConstant.whiteA700;
      case IconButtonVariant.OutlineRed700:
        return ColorConstant.red700;
      case IconButtonVariant.FillWhiteA70063:
        return ColorConstant.whiteA70063;
      case IconButtonVariant.FillWhiteA70087:
        return ColorConstant.whiteA70087;
      default:
        return ColorConstant.whiteA70075;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.OutlineWhiteA700:
        return Border.all(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            4.39,
          ),
        );
      case IconButtonVariant.OutlineRed700:
        return Border.all(
          color: ColorConstant.red700,
          width: getHorizontalSize(
            4.39,
          ),
        );
      case IconButtonVariant.FillWhiteA70075:
      case IconButtonVariant.FillWhiteA70063:
      case IconButtonVariant.FillWhiteA70087:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.CircleBorder45:
        return BorderRadius.circular(
          getHorizontalSize(
            45.00,
          ),
        );
      case IconButtonShape.CircleBorder20:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
      case IconButtonShape.CircleBorder12:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
      case IconButtonShape.CircleBorder15:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            17.50,
          ),
        );
    }
  }
}

enum IconButtonShape {
  RoundedBorder17,
  CircleBorder45,
  CircleBorder20,
  CircleBorder12,
  CircleBorder15,
}
enum IconButtonPadding {
  PaddingAll10,
  PaddingAll7,
  PaddingAll24,
}
enum IconButtonVariant {
  FillWhiteA70075,
  OutlineWhiteA700,
  OutlineRed700,
  FillWhiteA70063,
  FillWhiteA70087,
}

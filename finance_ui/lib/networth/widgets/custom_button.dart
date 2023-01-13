import 'package:finance_ui/app/utils/color_constant.dart';
import 'package:finance_ui/app/utils/size_utils.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    this.shape,
    this.padding,
    this.variant,
    this.fontStyle,
    this.alignment,
    this.margin,
    this.onTap,
    this.width,
    this.height,
    this.text,
    this.prefixWidget,
    this.suffixWidget,
  });

 final ButtonShape? shape;

 final ButtonPadding? padding;

 final ButtonVariant? variant;

 final ButtonFontStyle? fontStyle;

 final Alignment? alignment;

 final EdgeInsetsGeometry? margin;

 final VoidCallback? onTap;

 final double? width;

 final double? height;

 final String? text;

 final Widget? prefixWidget;

 final Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  Padding _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  Widget _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  ButtonStyle _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        getHorizontalSize(width ?? 0),
        getVerticalSize(height ?? 0),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  EdgeInsetsGeometry _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll10:
        return getPadding(
          all: 10,
        );
      default:
        return getPadding(
          all: 7,
        );
    }
  }

  Color _setColor() {
    switch (variant) {
      case ButtonVariant.FillGreenA700:
        return ColorConstant.greenA700;
      default:
        return ColorConstant.whiteA700;
    }
  }

  BorderRadius _setBorderRadius() {
    switch (shape) {
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        );
    }
  }

  TextStyle _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.GilroySemiBold13:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.GilroySemiBold12WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w600,
        );
      default:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w600,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder5,
}

enum ButtonPadding {
  PaddingAll7,
  PaddingAll10,
}

enum ButtonVariant {
  FillWhiteA700,
  FillGreenA700,
}

enum ButtonFontStyle {
  GilroySemiBold12,
  GilroySemiBold13,
  GilroySemiBold12WhiteA700,
}

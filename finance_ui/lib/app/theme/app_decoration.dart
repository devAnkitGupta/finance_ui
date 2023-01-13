import 'package:finance_ui/app/utils/color_constant.dart';
import 'package:finance_ui/app/utils/size_utils.dart';
import 'package:flutter/material.dart';

class AppDecoration {
  static BoxDecoration get outlineBlack90021 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90021,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get fillIndigo900 => BoxDecoration(
        color: ColorConstant.indigo900,
      );
  static BoxDecoration get fillGray900 => BoxDecoration(
        color: ColorConstant.gray900,
      );
  static BoxDecoration get gradientGreen2007fTeal507f => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.green2007f,
            ColorConstant.teal507f,
          ],
        ),
      );
  static BoxDecoration get txtFillRedA4002d => BoxDecoration(
        color: ColorConstant.redA4002d,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillBlue900 => BoxDecoration(
        color: ColorConstant.blue900,
      );
  static BoxDecoration get txtFillTeal50 => BoxDecoration(
        color: ColorConstant.teal50,
      );
  static BoxDecoration get outlineBlack9004f => BoxDecoration(
        color: ColorConstant.redA40001,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9004f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              -3,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9004f1 => BoxDecoration(
        color: ColorConstant.black900,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9004f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              -3,
            ),
          ),
        ],
      );
  static BoxDecoration get fillRed800 => BoxDecoration(
        color: ColorConstant.red800,
      );
  static BoxDecoration get txtFillIndigo50 => BoxDecoration(
        color: ColorConstant.indigo50,
      );
  static BoxDecoration get fillLightblue900 => BoxDecoration(
        color: ColorConstant.lightBlue900,
      );
  static BoxDecoration get outlineGreenA700 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.greenA700,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5.00,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10.00,
    ),
  );

  static BorderRadius circleBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15.00,
    ),
  );

  static BorderRadius txtRoundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4.00,
    ),
  );
}

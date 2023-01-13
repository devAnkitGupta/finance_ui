import 'package:finance_ui/app/theme/app_decoration.dart';
import 'package:finance_ui/app/theme/app_style.dart';
import 'package:finance_ui/app/utils/image_constant.dart';
import 'package:finance_ui/app/utils/size_utils.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_image_view.dart';

// ignore: must_be_immutable
class ListiciciprucommoditiesItemWidget extends StatelessWidget {
  ListiciciprucommoditiesItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 24,
          bottom: 2,
        ),
        padding: getPadding(
          left: 15,
          top: 16,
          right: 15,
          bottom: 16,
        ),
        decoration: AppDecoration.outlineBlack90021.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage67,
                          height: getSize(
                            20.00,
                          ),
                          width: getSize(
                            20.00,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 6,
                            top: 3,
                            bottom: 1,
                          ),
                          child: Text(
                            "ICICI Pru Commodities Fund",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtGilroyBold12.copyWith(
                              height: getVerticalSize(
                                0.83,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: getPadding(
                        top: 10,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: getHorizontalSize(
                              69.00,
                            ),
                            padding: getPadding(
                              left: 10,
                              top: 4,
                              right: 10,
                              bottom: 4,
                            ),
                            decoration: AppDecoration.txtFillIndigo50.copyWith(
                              borderRadius: BorderRadiusStyle.txtRoundedBorder4,
                            ),
                            child: Text(
                              "Mutual Funds",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium8.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.08,
                                ),
                                height: getVerticalSize(
                                  0.85,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              54.00,
                            ),
                            margin: getMargin(
                              left: 10,
                            ),
                            padding: getPadding(
                              left: 10,
                              top: 4,
                              right: 10,
                              bottom: 4,
                            ),
                            decoration: AppDecoration.txtFillIndigo50.copyWith(
                              borderRadius: BorderRadiusStyle.txtRoundedBorder4,
                            ),
                            child: Text(
                              "Med. Risk",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium8.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.08,
                                ),
                                height: getVerticalSize(
                                  0.85,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage65,
                  height: getVerticalSize(
                    16.00,
                  ),
                  width: getHorizontalSize(
                    53.00,
                  ),
                  margin: getMargin(
                    left: 15,
                    top: 32,
                    bottom: 2,
                  ),
                ),
              ],
            ),
            Padding(
              padding: getPadding(
                top: 26,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 7,
                      bottom: 10,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Fitch A",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtGilroyBold10.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.02,
                            ),
                            height: getVerticalSize(
                              0.99,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 9,
                          ),
                          child: Text(
                            "Rating",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtGilroyMedium8Gray9008e.copyWith(
                              height: getVerticalSize(
                                1.06,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 37,
                          ),
                          child: Text(
                            "9.20%",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtGilroyBold10Gray900.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.02,
                              ),
                              height: getVerticalSize(
                                0.99,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 9,
                          ),
                          child: Text(
                            "Coupon rate",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtGilroyMedium8Gray9008e.copyWith(
                              height: getVerticalSize(
                                1.06,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 45,
                      bottom: 1,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage3,
                          height: getSize(
                            16.00,
                          ),
                          width: getSize(
                            16.00,
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            38.00,
                          ),
                          margin: getMargin(
                            top: 8,
                          ),
                          child: Text(
                            "SEBI\ncompliant",
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtGilroyMedium8Gray9008e.copyWith(
                              height: getVerticalSize(
                                1.06,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(top: 32),
                          child: Text(
                            "₹ 30,000",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtGilroyBold10Gray900.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.02,
                              ),
                              height: getVerticalSize(
                                0.99,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            41.00,
                          ),
                          margin: getMargin(
                            top: 7,
                          ),
                          child: Text(
                            "Minimum\nInvestment",
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtGilroyMedium8Gray9008e.copyWith(
                              height: getVerticalSize(
                                1.06,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 44,
                      top: 1,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "9.95%",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtGilroyBold10.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.20,
                            ),
                            height: getVerticalSize(
                              0.99,
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            31.00,
                          ),
                          margin: getMargin(
                            top: 8,
                          ),
                          child: Text(
                            "Yield on\nmaturity",
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtGilroyMedium8Gray9008e.copyWith(
                              height: getVerticalSize(
                                1.06,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 33,
                          ),
                          child: Text(
                            "13 months",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtGilroyBold10Gray900.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.10,
                              ),
                              height: getVerticalSize(
                                0.99,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            31.00,
                          ),
                          margin: getMargin(
                            top: 8,
                          ),
                          child: Text(
                            "Time for\nmaturity",
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtGilroyMedium8Gray9008e.copyWith(
                              height: getVerticalSize(
                                1.06,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            CustomButton(
              height: 36,
              width: 241,
              text: "Invest Now",
              margin: getMargin(top: 26),
              variant: ButtonVariant.FillGreenA700,
              padding: ButtonPadding.PaddingAll10,
              fontStyle: ButtonFontStyle.GilroySemiBold12WhiteA700,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:finance_ui/app/theme/app_decoration.dart';
import 'package:finance_ui/app/theme/app_style.dart';
import 'package:finance_ui/app/utils/image_constant.dart';
import 'package:finance_ui/app/utils/size_utils.dart';
import 'package:finance_ui/networth/widgets/custom_button.dart';
import 'package:finance_ui/networth/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';

class CashbackOfferList extends StatelessWidget {
  const CashbackOfferList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: getPadding(top: 45),
      child: IntrinsicWidth(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(width: 20),
        Container(
            padding: getPadding(left: 12, top: 9, right: 12, bottom: 9),
            decoration: AppDecoration.fillGray900
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: getVerticalSize(146.00),
                      width: getHorizontalSize(273.00),
                      child: Stack(alignment: Alignment.topCenter, children: [
                        CustomButton(
                            height: 30,
                            width: 97,
                            text: "Discover Now",
                            alignment: Alignment.bottomLeft),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                height: getVerticalSize(122.00),
                                width: getHorizontalSize(273.00),
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                    width: getHorizontalSize(
                                                        273.00),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 12),
                                                              child: Text(
                                                                  "5% cashback",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtGilroySemiBold20WhiteA700
                                                                      .copyWith(
                                                                          height:
                                                                              getVerticalSize(0.84)))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      bottom:
                                                                          20),
                                                              child: Text("AD",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtGilroySemiBold13
                                                                      .copyWith(
                                                                          height:
                                                                              getVerticalSize(0.84))))
                                                        ])),
                                                Container(
                                                    width: getHorizontalSize(
                                                        138.00),
                                                    margin: getMargin(top: 15),
                                                    child: Text(
                                                        "on Grip Invest every time you invest through Mojek",
                                                        maxLines: null,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGilroyRegular12
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.12),
                                                                height:
                                                                    getVerticalSize(
                                                                        1.29))))
                                              ])),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgImage81,
                                          height: getSize(85.00),
                                          width: getSize(85.00),
                                          alignment: Alignment.bottomRight,
                                          margin: getMargin(right: 21))
                                    ])))
                      ])),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage29x25,
                      height: getVerticalSize(9.00),
                      width: getHorizontalSize(25.00),
                      margin: getMargin(top: 2, right: 3, bottom: 2))
                ])),
        Container(
            margin: getMargin(left: 13),
            padding: getPadding(left: 22, top: 21, right: 22, bottom: 21),
            decoration: AppDecoration.fillGray900
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                  padding: getPadding(top: 1),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("5% cashback",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtGilroySemiBold20WhiteA700
                                .copyWith(height: getVerticalSize(0.84))),
                        Container(
                            width: getHorizontalSize(152.00),
                            margin: getMargin(top: 15),
                            child: Text("everytime you invest through Mojek",
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyRegular12.copyWith(
                                    letterSpacing: getHorizontalSize(0.12),
                                    height: getVerticalSize(1.29)))),
                        CustomButton(
                            height: 32,
                            width: 105,
                            text: "Discover Now",
                            margin: getMargin(top: 29),
                            fontStyle: ButtonFontStyle.GilroySemiBold13)
                      ])),
              CustomImageView(
                  imagePath: ImageConstant.imgImage81,
                  height: getSize(105.00),
                  width: getSize(105.00),
                  margin: getMargin(left: 6, top: 25, bottom: 7))
            ])),
        const SizedBox(width: 20),
      ])),
    );
  }
}

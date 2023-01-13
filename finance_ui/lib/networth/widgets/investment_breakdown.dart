import 'package:finance_ui/app/theme/app_decoration.dart';
import 'package:finance_ui/app/theme/app_style.dart';
import 'package:finance_ui/app/utils/color_constant.dart';
import 'package:finance_ui/app/utils/image_constant.dart';
import 'package:finance_ui/app/utils/size_utils.dart';
import 'package:flutter/material.dart';

import 'custom_image_view.dart';

class InvestmentBreakDown extends StatelessWidget {
  const InvestmentBreakDown({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: getPadding(top: 45),
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 20),
            Container(
                height: getVerticalSize(203.00),
                width: getHorizontalSize(355.00),
                child: Stack(alignment: Alignment.bottomLeft, children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: getHorizontalSize(93.00),
                      margin: getMargin(top: 19),
                      child: Text(
                        "Your Investment breakdown",
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtGilroySemiBold18.copyWith(
                          height: getVerticalSize(0.84),
                        ),
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                          padding: getPadding(bottom: 13),
                          child: Row(children: [
                            Container(
                                width: getHorizontalSize(66.00),
                                child: Text("View all investments",
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGilroySemiBold12
                                        .copyWith(
                                            height: getVerticalSize(0.84)))),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: getVerticalSize(9.00),
                                width: getHorizontalSize(16.00),
                                margin: getMargin(left: 17, top: 8, bottom: 8))
                          ]))),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: getHorizontalSize(132.00),
                      margin: getMargin(right: 87),
                      padding: getPadding(top: 11, bottom: 11),
                      decoration: AppDecoration.outlineBlack90021.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: getSize(83.00),
                              width: getSize(83.00),
                              margin: getMargin(top: 1),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: getSize(83.00),
                                        width: getSize(83.00),
                                        child: CircularProgressIndicator(
                                            value: 0.5,
                                            strokeWidth:
                                                getHorizontalSize(4.00)))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Text("₹ 60.2 K",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyBold15
                                            .copyWith(
                                                height: getVerticalSize(0.83))))
                              ])),
                          Padding(
                              padding: getPadding(top: 8),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCheckmark,
                                        height: getVerticalSize(10.00),
                                        width: getHorizontalSize(12.00),
                                        margin: getMargin(top: 2, bottom: 2)),
                                    Padding(
                                        padding: getPadding(left: 7),
                                        child: Text("stocks",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtGilroySemiBold12Gray90001
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(0.84))))
                                  ])),
                          Container(
                              width: getHorizontalSize(52.00),
                              margin: getMargin(top: 8),
                              padding: getPadding(
                                  left: 4, top: 1, right: 4, bottom: 1),
                              decoration: AppDecoration.txtFillTeal50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.txtRoundedBorder4),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "12% ",
                                        style: TextStyle(
                                            color: ColorConstant.greenA700,
                                            fontSize: getFontSize(10),
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            height: getVerticalSize(0.84))),
                                    TextSpan(
                                        text: "profit",
                                        style: TextStyle(
                                            color: ColorConstant.greenA700,
                                            fontSize: getFontSize(10),
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w400,
                                            height: getVerticalSize(0.84)))
                                  ]),
                                  textAlign: TextAlign.left)),
                          Container(
                              height: getVerticalSize(1.00),
                              width: getHorizontalSize(132.00),
                              margin: getMargin(top: 19),
                              decoration: BoxDecoration(
                                  color: ColorConstant.gray30001)),
                          Padding(
                              padding: getPadding(top: 7),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("view",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroySemiBold14
                                            .copyWith(
                                                height: getVerticalSize(0.84))),
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgArrowrightGreenA700,
                                        height: getVerticalSize(7.00),
                                        width: getHorizontalSize(12.00),
                                        margin: getMargin(
                                            left: 7, top: 5, bottom: 4))
                                  ]))
                        ],
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                          width: getHorizontalSize(131.00),
                          padding: getPadding(top: 11, bottom: 11),
                          decoration: AppDecoration.outlineBlack90021.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: getSize(83.00),
                                    width: getSize(83.00),
                                    margin: getMargin(top: 1),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: getSize(83.00),
                                                  width: getSize(83.00),
                                                  child:
                                                      CircularProgressIndicator(
                                                          value: 0.5,
                                                          strokeWidth:
                                                              getHorizontalSize(
                                                                  4.00)))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Text("₹ 9.2 L",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: AppStyle
                                                      .txtGilroyBold15
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  0.83))))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 9),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgFile,
                                              height: getVerticalSize(10.00),
                                              width: getHorizontalSize(11.00),
                                              margin:
                                                  getMargin(top: 2, bottom: 2)),
                                          Padding(
                                              padding: getPadding(left: 7),
                                              child: Text("mutual funds",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroySemiBold12Gray90001
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  0.84))))
                                        ])),
                                Container(
                                    width: getHorizontalSize(46.00),
                                    margin: getMargin(top: 7),
                                    padding: getPadding(
                                        left: 7, top: 1, right: 7, bottom: 1),
                                    decoration: AppDecoration.txtFillRedA4002d
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder4),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "2% ",
                                              style: TextStyle(
                                                  color: ColorConstant.redA400,
                                                  fontSize: getFontSize(10),
                                                  fontFamily: 'Gilroy',
                                                  fontWeight: FontWeight.w600,
                                                  height:
                                                      getVerticalSize(0.84))),
                                          TextSpan(
                                              text: "loss",
                                              style: TextStyle(
                                                  color: ColorConstant.redA400,
                                                  fontSize: getFontSize(10),
                                                  fontFamily: 'Gilroy',
                                                  fontWeight: FontWeight.w400,
                                                  height:
                                                      getVerticalSize(0.84)))
                                        ]),
                                        textAlign: TextAlign.left)),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(131.00),
                                    margin: getMargin(top: 19),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray30001)),
                                Padding(
                                    padding: getPadding(top: 7),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("view",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroySemiBold14
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          0.84))),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowrightGreenA700,
                                              height: getVerticalSize(7.00),
                                              width: getHorizontalSize(12.00),
                                              margin: getMargin(
                                                  left: 7, top: 5, bottom: 4))
                                        ]))
                              ])))
                ])),
            Container(
                margin: getMargin(left: 73, top: 4),
                padding: getPadding(top: 13, bottom: 13),
                decoration: AppDecoration.outlineBlack90021
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getSize(83.00),
                          width: getSize(83.00),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: getSize(83.00),
                                    width: getSize(83.00),
                                    child: CircularProgressIndicator(
                                        value: 0.5,
                                        strokeWidth: getHorizontalSize(4.00)))),
                            Align(
                                alignment: Alignment.center,
                                child: Text("₹ 1.5 L",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.txtGilroyBold15.copyWith(
                                        height: getVerticalSize(0.83))))
                          ])),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgVolume,
                                    height: getSize(13.00),
                                    width: getSize(13.00)),
                                Padding(
                                    padding: getPadding(left: 7),
                                    child: Text("startup equity",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold12Gray90001
                                            .copyWith(
                                                height: getVerticalSize(0.84))))
                              ])),
                      Container(
                          width: getHorizontalSize(46.00),
                          margin: getMargin(top: 8),
                          padding:
                              getPadding(left: 5, top: 3, right: 5, bottom: 3),
                          decoration: AppDecoration.txtFillRedA4002d.copyWith(
                              borderRadius:
                                  BorderRadiusStyle.txtRoundedBorder4),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "1",
                                    style: TextStyle(
                                        color: ColorConstant.redA400,
                                        fontSize: getFontSize(10),
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.w600,
                                        height: getVerticalSize(0.84))),
                                TextSpan(
                                    text: "2% ",
                                    style: TextStyle(
                                        color: ColorConstant.redA400,
                                        fontSize: getFontSize(10),
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.w600,
                                        height: getVerticalSize(0.84))),
                                TextSpan(
                                    text: "loss",
                                    style: TextStyle(
                                        color: ColorConstant.redA400,
                                        fontSize: getFontSize(10),
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.w400,
                                        height: getVerticalSize(0.84)))
                              ]),
                              textAlign: TextAlign.left)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: getVerticalSize(1.00),
                              width: getHorizontalSize(110.00),
                              margin: getMargin(top: 19),
                              decoration: BoxDecoration(
                                  color: ColorConstant.gray30001))),
                      Padding(
                          padding: getPadding(top: 8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("view",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.right,
                                    style: AppStyle.txtGilroySemiBold14
                                        .copyWith(
                                            height: getVerticalSize(0.84))),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightGreenA700,
                                    height: getVerticalSize(7.00),
                                    width: getHorizontalSize(12.00),
                                    margin:
                                        getMargin(left: 7, top: 4, bottom: 2))
                              ]))
                    ])),
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}

import 'package:finance_ui/app/theme/app_decoration.dart';
import 'package:finance_ui/app/theme/app_style.dart';
import 'package:finance_ui/app/utils/color_constant.dart';
import 'package:finance_ui/app/utils/size_utils.dart';
import 'package:flutter/material.dart';

class AccountBalanceCard extends StatelessWidget {
  const AccountBalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(335.00),
      height: getVerticalSize(215),
      margin: getMargin(top: 34, bottom: 42),
      padding: getPadding(left: 21, top: 25, right: 21, bottom: 25),
      decoration: AppDecoration.outlineBlack90021.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90021,
            spreadRadius: getHorizontalSize(1),
            blurRadius: getHorizontalSize(1),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: getPadding(left: 4),
              child: Text("₹ 25,30,578",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroyBold26
                      .copyWith(height: getVerticalSize(0.83)))),
          Padding(
              padding: getPadding(left: 4, top: 8),
              child: Text("Networth",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroyMedium12
                      .copyWith(height: getVerticalSize(0.85)))),
          Padding(
              padding: getPadding(left: 4, top: 31),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: getPadding(bottom: 5),
                        child: Text("what you have?",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtGilroyMedium13
                                .copyWith(height: getVerticalSize(0.85)))),
                    Text("₹ 30.4 L",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtGilroyBold18.copyWith(
                            letterSpacing: getHorizontalSize(0.45),
                            height: getVerticalSize(0.83)))
                  ])),
          Container(
              height: getVerticalSize(3.00),
              width: getHorizontalSize(285.00),
              margin: getMargin(left: 4, top: 1),
              child: Stack(alignment: Alignment.centerLeft, children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        height: getVerticalSize(3.00),
                        width: getHorizontalSize(200.00),
                        decoration:
                            BoxDecoration(color: ColorConstant.gray300))),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        height: getVerticalSize(3.00),
                        width: getHorizontalSize(104.00),
                        decoration:
                            BoxDecoration(color: ColorConstant.greenA700)))
              ])),
          Padding(
              padding: getPadding(left: 4, top: 27),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: getPadding(bottom: 5),
                        child: Text("what you owe?",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtGilroyMedium13
                                .copyWith(height: getVerticalSize(0.85)))),
                    Text("₹ 5.4 L",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtGilroyBold18.copyWith(
                            letterSpacing: getHorizontalSize(0.45),
                            height: getVerticalSize(0.83)))
                  ])),
          Container(
              height: getVerticalSize(3.00),
              width: getHorizontalSize(52.00),
              margin: getMargin(left: 4, top: 1, bottom: 3),
              decoration: BoxDecoration(color: ColorConstant.redA400))
        ],
      ),
    );
  }
}

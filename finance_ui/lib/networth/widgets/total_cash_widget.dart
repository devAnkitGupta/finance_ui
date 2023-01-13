import 'package:finance_ui/app/theme/app_decoration.dart';
import 'package:finance_ui/app/theme/app_style.dart';
import 'package:finance_ui/app/utils/image_constant.dart';
import 'package:finance_ui/app/utils/size_utils.dart';
import 'package:finance_ui/networth/widgets/custom_button.dart';
import 'package:finance_ui/networth/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';

class TotalCashWidget extends StatelessWidget {
  const TotalCashWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(left: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: getPadding(top: 18, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Total cash",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtGilroyMedium12Gray900
                            .copyWith(height: getVerticalSize(0.85))),
                    Padding(
                        padding: getPadding(top: 5),
                        child: Text("₹ 32,45,578",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtGilroyBold20
                                .copyWith(height: getVerticalSize(0.83)))),
                    Padding(
                        padding: getPadding(top: 56),
                        child: Row(children: [
                          Container(
                              width: getHorizontalSize(69.00),
                              child: Text("View recent transactions",
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroySemiBold12.copyWith(
                                      height: getVerticalSize(0.84)))),
                          CustomImageView(
                              svgPath: ImageConstant.imgArrowright,
                              height: getVerticalSize(9.00),
                              width: getHorizontalSize(16.00),
                              margin: getMargin(left: 14, top: 8, bottom: 8))
                        ]))
                  ],
                ),
              ),
              Padding(
                padding: getPadding(left: 26),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        padding: getPadding(
                            left: 20, top: 16, right: 20, bottom: 16),
                        decoration: AppDecoration.fillRed800.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage2,
                                  height: getVerticalSize(29.00),
                                  width: getHorizontalSize(31.00),
                                  margin: getMargin(left: 2)),
                              Padding(
                                  padding: getPadding(left: 2, top: 12),
                                  child: Text("₹ 32,45,578",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtGilroyBold16.copyWith(
                                          height: getVerticalSize(0.83)))),
                              Padding(
                                  padding: getPadding(left: 2, top: 4),
                                  child: Text("Kotak Savings (6524)",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtGilroyRegular12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.12),
                                              height: getVerticalSize(1.29)))),
                              CustomButton(
                                  height: 30,
                                  width: 122,
                                  text: "View transactions",
                                  margin:
                                      getMargin(left: 2, top: 15, bottom: 5))
                            ])),
                    Container(
                      margin: getMargin(left: 10),
                      padding:
                          getPadding(left: 16, top: 14, right: 16, bottom: 14),
                      decoration: AppDecoration.fillBlue900.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse7,
                              height: getSize(30.00),
                              width: getSize(30.00),
                              radius: BorderRadius.circular(
                                  getHorizontalSize(15.00))),
                          Padding(
                              padding: getPadding(left: 6, top: 17),
                              child: Text("₹ 32,45,578",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyBold16.copyWith(
                                      height: getVerticalSize(0.83)))),
                          Padding(
                              padding: getPadding(left: 6, top: 3),
                              child: Text("hdfc Savings (6524)",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyRegular12.copyWith(
                                      letterSpacing: getHorizontalSize(0.12),
                                      height: getVerticalSize(1.29)))),
                          CustomButton(
                              height: 30,
                              width: 122,
                              text: "View transactions",
                              margin: getMargin(top: 12, bottom: 8),
                              alignment: Alignment.center)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 10)
            ],
          ),
        ),
      ),
    );
  }
}

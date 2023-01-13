import 'package:finance_ui/app/theme/app_decoration.dart';
import 'package:finance_ui/app/theme/app_style.dart';
import 'package:finance_ui/app/utils/image_constant.dart';
import 'package:finance_ui/app/utils/size_utils.dart';
import 'package:finance_ui/networth/widgets/custom_button.dart';
import 'package:finance_ui/networth/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';

class CreditCardUi extends StatelessWidget {
  const CreditCardUi({
    super.key,
    required this.color,
  });
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: getSize(350),
        height: getSize(200),
        padding: getPadding(left: 16, top: 17, right: 16, bottom: 17),
        decoration: AppDecoration.outlineBlack9004f1.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
          color: color,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: getPadding(left: 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("₹ 4,796",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtGilroyBold20WhiteA700
                              .copyWith(height: getVerticalSize(0.83))),
                      Padding(
                        padding: getPadding(top: 14),
                        child: Text(
                          "one card (6524)",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtGilroyRegular12.copyWith(
                            letterSpacing: getHorizontalSize(0.12),
                            height: getVerticalSize(1.29),
                          ),
                        ),
                      )
                    ],
                  ),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage85,
                      height: getVerticalSize(19.00),
                      width: getHorizontalSize(43.00),
                      margin: getMargin(top: 1, bottom: 32))
                ],
              ),
            ),
            Padding(
              padding: getPadding(left: 1, top: 51, bottom: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                      height: 30, width: 122, text: "View transactions"),
                  Spacer(),
                  Padding(
                    padding: getPadding(top: 7, bottom: 7),
                    child: Text(
                      "View offers",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGilroySemiBold12Teal300.copyWith(
                        height: getVerticalSize(1.00),
                      ),
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgInfo,
                    height: getVerticalSize(9.00),
                    width: getHorizontalSize(16.00),
                    margin: getMargin(left: 7, top: 10, bottom: 10),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

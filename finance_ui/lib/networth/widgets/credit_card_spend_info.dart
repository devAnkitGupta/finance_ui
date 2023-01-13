import 'package:finance_ui/app/theme/app_style.dart';
import 'package:finance_ui/app/utils/image_constant.dart';
import 'package:finance_ui/app/utils/size_utils.dart';
import 'package:finance_ui/networth/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';

class CreditCardSpentInfo extends StatelessWidget {
  const CreditCardSpentInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(left: 20, top: 44, right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "total credit card spend",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtGilroyMedium12Gray900.copyWith(
                  height: getVerticalSize(0.85),
                ),
              ),
              SizedBox(height: getSize(8)),
              Padding(
                padding: getPadding(top: 4),
                child: Text(
                  "₹ 32,45,578",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroyBold20.copyWith(
                    height: getVerticalSize(0.83),
                  ),
                ),
              )
            ],
          ),
          Spacer(),
          Container(
              width: getHorizontalSize(69.00),
              margin: getMargin(top: 12, bottom: 5),
              child: Text("View recent transactions",
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroySemiBold12
                      .copyWith(height: getVerticalSize(0.84)))),
          CustomImageView(
            svgPath: ImageConstant.imgArrowright,
            height: getVerticalSize(9.00),
            width: getHorizontalSize(16.00),
            margin: getMargin(top: 20, bottom: 14),
          )
        ],
      ),
    );
  }
}

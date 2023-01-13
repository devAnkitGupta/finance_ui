import 'package:finance_ui/app/theme/app_decoration.dart';
import 'package:finance_ui/app/theme/app_style.dart';
import 'package:finance_ui/app/utils/size_utils.dart';
import 'package:flutter/material.dart';

class FeedbackButton extends StatelessWidget {
  const FeedbackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getSize(45),
      margin: getMargin(bottom: 17, top: 20, left: 20, right: 20),
      padding: getPadding(left: 31, top: 13, right: 31, bottom: 13),
      decoration: AppDecoration.outlineGreenA700
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(top: 1),
            child: Text(
              "think we can improve? send us your feedback",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtGilroySemiBold13GreenA700.copyWith(
                height: getVerticalSize(1.00),
              ),
            ),
          )
        ],
      ),
    );
  }
}

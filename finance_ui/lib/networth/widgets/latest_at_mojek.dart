import 'package:finance_ui/app/theme/app_style.dart';
import 'package:finance_ui/app/utils/size_utils.dart';
import 'package:flutter/material.dart';

class LatestAtMojek extends StatelessWidget {
  const LatestAtMojek({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(top: 43),
      child: Text(
        "latest at mojek money",
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
        style: AppStyle.txtGilroySemiBold16Gray900.copyWith(
          height: getVerticalSize(0.84),
        ),
      ),
    );
  }
}

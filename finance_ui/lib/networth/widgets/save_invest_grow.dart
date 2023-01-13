import 'package:finance_ui/app/theme/app_style.dart';
import 'package:finance_ui/app/utils/size_utils.dart';
import 'package:flutter/material.dart';

class SaveInvestGrow extends StatelessWidget {
  const SaveInvestGrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(top: 43),
      child: Text(
        '  save \n invest \n  grow!',
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        style: AppStyle.txtGilroyMedium72.copyWith(
          height: getVerticalSize(0.9),
        ),
      ),
    );
  }
}

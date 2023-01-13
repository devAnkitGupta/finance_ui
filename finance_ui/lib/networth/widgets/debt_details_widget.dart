import 'package:finance_ui/app/theme/app_decoration.dart';
import 'package:finance_ui/app/theme/app_style.dart';
import 'package:finance_ui/app/utils/color_constant.dart';
import 'package:finance_ui/app/utils/image_constant.dart';
import 'package:finance_ui/app/utils/size_utils.dart';
import 'package:finance_ui/networth/widgets/custom_image_view.dart';
import 'package:finance_ui/networth/widgets/listkotakbank_item_widget.dart';
import 'package:flutter/material.dart';

class DebtDetails extends StatelessWidget {
  const DebtDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(335.00),
      margin: getMargin(top: 45),
      padding: getPadding(top: 12, bottom: 12),
      decoration: AppDecoration.outlineBlack90021
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("debt",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtGilroySemiBold16
                    .copyWith(height: getVerticalSize(0.84))),
            Padding(
                padding: getPadding(left: 186, top: 1),
                child: Text("₹ 12,45,578",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroyBold15Black900
                        .copyWith(height: getVerticalSize(0.83))))
          ]),
          Container(
              height: getVerticalSize(1.00),
              width: getHorizontalSize(335.00),
              margin: getMargin(top: 11),
              decoration: BoxDecoration(color: ColorConstant.gray30001)),
          Padding(
              padding: getPadding(left: 16, top: 21, right: 22),
              child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: getVerticalSize(34.00));
                  },
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ListkotakbankItemWidget();
                  })),
          Container(
              height: getVerticalSize(1.00),
              width: getHorizontalSize(335.00),
              margin: getMargin(top: 33),
              decoration: BoxDecoration(color: ColorConstant.gray30001)),
          Padding(
            padding: getPadding(top: 11, bottom: 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "View details",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroySemiBold14.copyWith(
                    height: getVerticalSize(0.84),
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgArrowright,
                  height: getVerticalSize(9.00),
                  width: getHorizontalSize(16.00),
                  margin: getMargin(left: 8, top: 3, bottom: 3),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

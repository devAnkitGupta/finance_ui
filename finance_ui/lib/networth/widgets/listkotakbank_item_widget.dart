import 'package:finance_ui/app/theme/app_style.dart';
import 'package:finance_ui/app/utils/size_utils.dart';
import 'package:flutter/material.dart';

import '../../app/utils/image_constant.dart';
import 'custom_image_view.dart';

// ignore: must_be_immutable
class ListkotakbankItemWidget extends StatelessWidget {
  const ListkotakbankItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage2,
          height: getVerticalSize(
            29.00,
          ),
          width: getHorizontalSize(
            31.00,
          ),
          margin: getMargin(
            top: 1,
            bottom: 3,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Kotak Bank',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtGilroyMedium10.copyWith(
                  height: getVerticalSize(
                    1,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 5,
                ),
                child: Text(
                  'Personal loan',
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroyMedium14.copyWith(
                    height: getVerticalSize(
                      1.00,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: getPadding(
            left: 77,
            top: 9,
            bottom: 7,
          ),
          child: Text(
            "₹ 32,45,578",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtGilroySemiBold14Gray900.copyWith(
              height: getVerticalSize(
                0.84,
              ),
            ),
          ),
        ),
        CustomImageView(
          svgPath: ImageConstant.imgVector,
          height: getVerticalSize(
            9.00,
          ),
          width: getHorizontalSize(
            4.00,
          ),
          margin: getMargin(
            left: 10,
            top: 12,
            bottom: 12,
          ),
        ),
      ],
    );
  }
}

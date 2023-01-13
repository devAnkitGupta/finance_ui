import 'package:finance_ui/app/app_bar/custom_app_bar.dart';
import 'package:finance_ui/app/utils/image_constant.dart';
import 'package:finance_ui/app/utils/size_utils.dart';
import 'package:finance_ui/networth/widgets/account_balance_card.dart';
import 'package:flutter/material.dart';
import '../app/theme/app_style.dart';
import 'widgets/cashback_offer_list.dart';
import 'widgets/custom_image_view.dart';
import 'widgets/investment_breakdown.dart';
import 'widgets/total_cash_widget.dart';

class Networth extends StatelessWidget {
  const Networth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GradientNetworthTile(),
            CashbackOfferList(),
            InvestmentBreakDown(),
          ],
        ),
      ),
    );
  }
}

class GradientNetworthTile extends StatelessWidget {
  const GradientNetworthTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getSize(575),
      child: Stack(
        children: [
          Image.asset(
            ImageConstant.backgroundGradient,
            fit: BoxFit.fill,
            width: double.infinity,
            height: getSize(575),
          ),
          Column(
            children: [
              CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 33,
                leading: CustomImageView(
                  svgPath: ImageConstant.imgArrowleft,
                  height: getSize(13.00),
                  width: getSize(13.00),
                  margin: getMargin(left: 20, top: 6, bottom: 4),
                  onTap: () {},
                ),
                centerTitle: true,
                title: Text("networth",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroySemiBold20
                        .copyWith(height: getVerticalSize(1.00))),
              ),
              AccountBalanceCard(),
              TotalCashWidget()
            ],
          ),
        ],
      ),
    );
  }
}

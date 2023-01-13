import 'package:finance_ui/networth/widgets/latest_at_mojek.dart';
import 'package:flutter/material.dart';
import 'widgets/cashback_offer_list.dart';
import 'widgets/credit_card_animation.dart';
import 'widgets/credit_card_spend_info.dart';
import 'widgets/debt_details_widget.dart';
import 'widgets/feedback_button.dart';
import 'widgets/gradient_networth_tile.dart';
import 'widgets/investment_breakdown.dart';
import 'widgets/latest_list.dart';
import 'widgets/save_invest_grow.dart';

class Networth extends StatelessWidget {
  const Networth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            GradientNetworthTile(),
            CashbackOfferList(),
            InvestmentBreakDown(),
            CreditCardSpentInfo(),
            CreditCardAnimation(),
            CashbackOfferList(),
            DebtDetails(),
            LatestAtMojek(),
            LatestList(),
            SaveInvestGrow(),
            FeedbackButton(),
          ],
        ),
      ),
    );
  }
}



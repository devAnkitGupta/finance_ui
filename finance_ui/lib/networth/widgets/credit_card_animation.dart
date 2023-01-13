import 'package:finance_ui/animations/credit_card_animation/animated_card_deck.dart';
import 'package:finance_ui/animations/credit_card_animation/credit_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreditCardAnimation extends StatefulWidget {
  const CreditCardAnimation({Key? key}) : super(key: key);

  @override
  State<CreditCardAnimation> createState() => _CreditCardAnimationState();
}

class _CreditCardAnimationState extends State<CreditCardAnimation> {
  List<CreditCardUIDetails> cardsDetailsList = [
    CreditCardUIDetails(
      color: Color(0xff02559A),
    ),
    CreditCardUIDetails(
      color: Color(0xffF3192D),
    ),
    CreditCardUIDetails(
      color: Color(0xff000000),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      margin: EdgeInsets.only(bottom: 10),
      alignment: Alignment.topCenter,
      child: CardStack(
        cardsDetailsList: cardsDetailsList,
      ),
    );
  }
}

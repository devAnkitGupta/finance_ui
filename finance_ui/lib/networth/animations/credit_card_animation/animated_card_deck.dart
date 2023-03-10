import 'dart:async';
import 'package:flutter/material.dart';

import 'animation_utils.dart';
import 'credit_card.dart';
import 'two_animated_builders.dart';

class CardStack extends StatefulWidget {
  const CardStack({
    Key? key,
    required this.cardsDetailsList,
  }) : super(key: key);

  final List<CreditCardUIDetails> cardsDetailsList;

  @override
  _CardStackState createState() => _CardStackState();
}

class _CardStackState extends State<CardStack> with TickerProviderStateMixin {
  late AnimationController _moveController;
  late AnimationController _shiftController;

  late CurvedAnimation curvedAnimation;

  bool isOut = false;

  @override
  void initState() {
    _shiftController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _moveController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    curvedAnimation =
        CurvedAnimation(parent: _moveController, curve: Curves.easeInOut);
    super.initState();
    Timer.periodic(Duration(milliseconds: 3000), (timer) async {
      if (!_moveController.toStringDetails().contains("DISPOSED")) {
        await animate();
      }
    });
  }

  Future<void> animate() async {
    await _moveController.forward();
    setState(() {
      isOut = true;
    });
    _moveController.reverse();
    await Future.delayed(Duration(milliseconds: 300));
    _shiftController.forward();
    await Future.delayed(Duration(seconds: 1));
    _shiftController.reset();
    setState(() {
      isOut = false;
      widget.cardsDetailsList.add(widget.cardsDetailsList.removeAt(0));
    });
  }

  @override
  void dispose() {
    _moveController.dispose();
    _shiftController.dispose();
    super.dispose();
  }

  @override
  build(BuildContext context) {
    int numberOfCards = widget.cardsDetailsList.length;
    return Container(
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: FittedBox(
        child: AnimatedMotionBuilders(
          animations: [
            _moveController,
            _shiftController,
          ],
          builder: () {
            return Stack(
              children: List.generate(
                numberOfCards + 1,
                (index) {
                  double multiplier = (numberOfCards + 1) - index.toDouble();
                  return Builder(
                    builder: (context) {
                      var topCardAnimDetails = CreditCardAnimationStatus(
                        move: multiplier,
                        index: index.toDouble(),
                      );
                      if (index == numberOfCards) {
                        return Opacity(
                          opacity: isOut ? 0 : 1,
                          child: CreditCard(
                            animationDetails: topCardAnimDetails,
                            creditCardUIDetails: widget.cardsDetailsList.first,
                          ),
                        );
                      }
                      double moveEnd =
                          (numberOfCards + 1) - numberOfCards.toDouble();
                      double moveStart = multiplier;
                      var cardStatus = CreditCardAnimationStatus(
                        move: isOut
                            ? getAnimValue(
                                animation: _moveController,
                                start: (numberOfCards + 1) - 1.0,
                                end: moveEnd)
                            : getAnimValue(
                                start: moveStart,
                                end: moveEnd,
                                animation: _moveController,
                              ),
                        index: isOut
                            ? getAnimValue(
                                start: 1.0,
                                end: numberOfCards.toDouble(),
                                animation: _moveController,
                              )
                            : numberOfCards * _moveController.value,
                      );
                      if (index == 0) {
                        return Opacity(
                          opacity: isOut ? 1 : 0,
                          child: CreditCard(
                            animationDetails: cardStatus,
                            creditCardUIDetails: widget.cardsDetailsList.first,
                          ),
                        );
                      }

                      var otherCardAnimDetails = CreditCardAnimationStatus(
                        move: getAnimValue(
                          start: multiplier,
                          end: (numberOfCards + 1) - (index.toDouble() + 1),
                          animation: _shiftController,
                        ),
                        index: getAnimValue(
                          start: index.toDouble(),
                          end: index.toDouble() + 1,
                          animation: _shiftController,
                        ),
                      );
                      List<CreditCardUIDetails> leftDetails = [];
                      for (int i = widget.cardsDetailsList.length - 1;
                          i > 0;
                          i--) {
                        leftDetails.add(widget.cardsDetailsList[i]);
                      }
                      return CreditCard(
                        animationDetails: otherCardAnimDetails,
                        creditCardUIDetails: leftDetails[index - 1],
                      );
                    },
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

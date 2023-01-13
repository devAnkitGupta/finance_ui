import 'package:flutter/material.dart';

class CreditCard extends StatefulWidget {
  final CreditCardAnimationStatus animationDetails;
  final CreditCardUIDetails atmCardUIDetails;

  const CreditCard({
    Key? key,
    required this.animationDetails,
    required this.atmCardUIDetails,
  }) : super(key: key);

  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(
        0,
        widget.animationDetails.move * 80.0,
      ),
      child: Container(
        width: 450,
        height: 280,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              widget.atmCardUIDetails.cardIcon,
              color: Colors.white,
              size: 30,
            ),
            Transform.translate(
              offset: Offset(0, -2),
              child: Text(
                "${widget.atmCardUIDetails.cardName} Card",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                4,
                (index) {
                  return Text(
                    "1234",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  );
                },
              ),
            ),
            Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "VALID\nTRU",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "10/21",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        widget.atmCardUIDetails.cardOwner.toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  "assets/images/mastercardlogo.png",
                  height: 30,
                )
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: widget.atmCardUIDetails.color,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 1.0,
              spreadRadius: 1.0,
            ),
          ],
        ),
      ),
    );
  }
}

class CreditCardAnimationStatus {
  final double index, move;

  CreditCardAnimationStatus({
    required this.index,
    required this.move,
  });
}

class CreditCardUIDetails {
  final Color color;
  final String cardName;
  final IconData cardIcon;
  final String cardOwner;
  final String cardPan;
  final String validThru;

  CreditCardUIDetails({
    required this.cardName,
    required this.cardIcon,
    required this.cardOwner,
    required this.cardPan,
    required this.validThru,
    required this.color,
  });
}

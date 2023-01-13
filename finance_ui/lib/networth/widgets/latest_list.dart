import 'package:finance_ui/app/utils/size_utils.dart';
import 'package:finance_ui/networth/widgets/listiciciprucommodities_item_widget.dart';
import 'package:flutter/material.dart';

class LatestList extends StatelessWidget {
  const LatestList({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        height: getVerticalSize(313.00),
        child: ListView.separated(
          padding: getPadding(top: 23),
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          separatorBuilder: (context, index) {
            return SizedBox(height: getVerticalSize(24.00));
          },
          itemCount: 2 + 2,
          itemBuilder: (context, index) {
            if (index < 1 || index > 2) return const SizedBox(width: 20);
            return ListiciciprucommoditiesItemWidget();
          },
        ),
      ),
    );
  }
}

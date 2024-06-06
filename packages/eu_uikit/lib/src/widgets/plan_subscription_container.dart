import 'package:eu_uikit/eu_uikit.dart';
import 'package:flutter/material.dart';

class PlanSubscriptionContainer extends StatelessWidget {
  const PlanSubscriptionContainer({
    required this.name,
    required this.price,
    this.bgColor = EUColors.baceGreyColor,
    this.discountBgColor = EUColors.accentRedColor,
    this.withDiscount = false,
    this.discount = 0,
    super.key,
  });
  final String name;
  final int price;
  final Color bgColor;
  final Color discountBgColor;
  final bool withDiscount;
  final int discount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 24.w),
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.w, horizontal: 16.w),
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: headerH2TextStyle,
                ),
                Text(
                  "$price ₽",
                  style: headerH2TextStyle,
                )
              ],
            ),
          ),
          if (withDiscount)
            Positioned(
              top: -16,
              right: 16,
              child: Container(
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  color: discountBgColor,
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: Text(
                  "$discount% off",
                  style: bodySmall10TextStyle.copyWith(
                    color: EUColors.whiteColor,
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}

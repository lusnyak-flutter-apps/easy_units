import 'package:eu_uikit/eu_uikit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlanFeatureElement extends StatelessWidget {
  const PlanFeatureElement({
    required this.title,
    required this.icon,
    required this.iconBgColor,
    super.key,
  });
  final String title;
  final Widget icon;
  final Color iconBgColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              height: 21.w,
              width: 21.w,
              padding: EdgeInsets.all(4.w),
              decoration: BoxDecoration(
                color: iconBgColor,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: icon),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: Text(
                title,
                style: bodyRegular15TextStyle,
              ),
            ),
          )
        ],
      ),
    );
  }
}

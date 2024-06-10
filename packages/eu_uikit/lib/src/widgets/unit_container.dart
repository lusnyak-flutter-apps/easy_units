import 'package:eu_uikit/eu_uikit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UnitContainer extends StatelessWidget {
  const UnitContainer({
    this.bgColor = EUColors.baceGreyColor,
    required this.withLock,
    this.icon,
    this.title = "",
    super.key,
  });

  final Color bgColor;
  final bool withLock;
  final Widget? icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0.w),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisSize: MainAxisSize.min,
        children: [
          withLock
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EasyUnitsAssets.icons.lockGrayFill.svg(width: 20.0.w),
                    SizedBox(
                      width: 8.0.w,
                    ),
                    //ToDo add withLock color grey
                    if (icon != null) Flexible(child: icon!)
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (icon != null) icon!,
                  ],
                ),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: withLock
                ? bodyBold15TextStyle.copyWith(color: EUColors.greyColor)
                : bodyBold15TextStyle,
          )
        ],
      ),
    );
  }
}

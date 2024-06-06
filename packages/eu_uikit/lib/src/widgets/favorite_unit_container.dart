import 'package:eu_uikit/eu_uikit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class FavoriteUnitContainer extends StatelessWidget {
  const FavoriteUnitContainer({
    this.bgColor = EUColors.baceGreyColor,
    this.firstUnit = "mph",
    this.secondUnit = "knots",
    this.onPressedSettings,
    this.onPressedDelete,
    super.key,
  });
  final Color bgColor;
  final String firstUnit;
  final String secondUnit;
  final void Function(BuildContext)? onPressedSettings;
  final void Function(BuildContext)? onPressedDelete;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 8.w),
        child: Slidable(
          key: const ValueKey(0),
          endActionPane: ActionPane(
            extentRatio: 0.3,
            motion: const ScrollMotion(),
            children: [
              CustomSlidableAction(
                flex: 1,
                onPressed: onPressedSettings ?? (BuildContext context) {},
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.zero,
                child: EasyUnitsAssets.icons.settingsFill.svg(width: 20.w),
              ),
              CustomSlidableAction(
                flex: 1,
                onPressed: onPressedDelete ?? (BuildContext context) {},
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.zero,
                child: EasyUnitsAssets.icons.trashRed.svg(width: 20.w),
              ),
            ],
          ),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20.w, horizontal: 16.w),
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    firstUnit,
                    style: headerH2TextStyle,
                  ),
                ),
                Expanded(
                    flex: 1, child: EasyUnitsAssets.icons.arrowRightLong.svg()),
                Expanded(
                  flex: 3,
                  child: Text(
                    secondUnit,
                    textAlign: TextAlign.end,
                    style: headerH2TextStyle,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

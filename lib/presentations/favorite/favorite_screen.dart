import 'package:auto_route/annotations.dart';
import 'package:easy_units/data/strings/app_strings.dart';
import 'package:eu_uikit/eu_uikit.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                AppStrings.favoritePageTitle,
                textAlign: TextAlign.start,
                style: headerH1TextStyle,
              ).paddingOnly(top: 10.w),
              16.h.heightBox,
              const FavoriteUnitContainer(),
              FavoriteUnitContainer(
                firstUnit: "mpg",
                secondUnit: "l/100 km",
                bgColor: EUColors.accentBlueColor,
                onPressedDelete: (context) {
                  debugPrint("onPressedDelete");
                },
                onPressedSettings: (context) {
                  debugPrint("onPressedSettings");
                },
              ),
              FavoriteUnitContainer(
                firstUnit: "℉",
                secondUnit: "°C",
                bgColor: EUColors.accentVioletColor,
                onPressedDelete: (context) {
                  debugPrint("onPressedDelete");
                },
                onPressedSettings: (context) {
                  debugPrint("onPressedSettings");
                },
              ),
              const FavoriteUnitContainer(),
            ],
          ).paddingSymmetric(horizontal: 16.w),
        ),
      ),
    );
  }
}

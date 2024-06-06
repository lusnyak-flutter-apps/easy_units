import 'package:auto_route/annotations.dart';
import 'package:easy_units/data/strings/app_strings.dart';
import 'package:eu_uikit/eu_uikit.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PlansScreen extends StatelessWidget {
  const PlansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   title: const Text("Choose your plan"),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                AppStrings.planePageTitle,
                textAlign: TextAlign.start,
                style: headerH1TextStyle,
              ).paddingOnly(top: 10.w),
              40.h.heightBox,
              Text(
                AppStrings.choosePlaneTitle,
                textAlign: TextAlign.center,
                style: headingTextStyle,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PlanFeatureElement(
                    icon: EasyUnitsAssets.icons.unlimit.svg(width: 20.w),
                    title: AppStrings.planeFeatureFavorites,
                    iconBgColor: EUColors.accentVioletColor,
                  ),
                  PlanFeatureElement(
                    icon: EasyUnitsAssets.icons.plus6Side.svg(width: 20.w),
                    title: AppStrings.planeFeatureConversion,
                    iconBgColor: EUColors.accentBlueColor,
                  ),
                  PlanFeatureElement(
                    icon: EasyUnitsAssets.icons.stop.svg(width: 20.w),
                    title: AppStrings.planeFeatureAds,
                    iconBgColor: EUColors.accentRedColor,
                  ),
                  PlanFeatureElement(
                    icon: EasyUnitsAssets.icons.refresh.svg(width: 20.w),
                    title: AppStrings.planeFeatureUpdates,
                    iconBgColor: EUColors.accentGreenColor,
                  ),
                ],
              ).paddingOnly(
                top: 16.w,
              ),
              32.h.heightBox,
              PlanSubscriptionContainer(
                name: AppStrings.planeSubscriptionMonthly,
                price: 249,
              ),
              PlanSubscriptionContainer(
                name: AppStrings.planeSubscriptionAnnual,
                price: 1490,
                bgColor: EUColors.accentGreenColor,
                discount: 45,
                withDiscount: true,
              ),
            ],
          ).paddingSymmetric(horizontal: 16.w),
        ),
      ),
    );
  }
}

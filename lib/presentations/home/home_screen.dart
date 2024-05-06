import 'package:auto_route/auto_route.dart';
import 'package:easy_units/core/router/app_router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:eu_uikit/eu_uikit.dart' as eu_uikit;

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      homeIndex: 0,
      routes: const [
        ChooseUnitTypeRoute(),
        FavoriteRoute(),
        PlansRoute(),
        SettingsRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      bottomNavigationBuilder: (_, tabsRouter) {
        ColorFilter selectedColor(int index) => tabsRouter.activeIndex == index
            ? eu_uikit.EUColors.navBarSvgSelectedColor
            : eu_uikit.EUColors.navBarSvgUnSelectedColor;
        return DecoratedBox(
          decoration: const BoxDecoration(
              border: Border(
                  top: BorderSide(
                      color: eu_uikit.EUColors.navGreyColor, width: 0.5))),
          child: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              BottomNavigationBarItem(
                  label: 'Home',
                  icon: eu_uikit.EasyUnitsAssets.icons.units
                      .svg(colorFilter: selectedColor(0))),
              BottomNavigationBarItem(
                  label: 'Favorite',
                  icon: eu_uikit.EasyUnitsAssets.icons.favorites
                      .svg(colorFilter: selectedColor(1))),
              BottomNavigationBarItem(
                  label: 'Plans',
                  icon: eu_uikit.EasyUnitsAssets.icons.plans
                      .svg(colorFilter: selectedColor(2))),
              BottomNavigationBarItem(
                  label: 'Settings',
                  icon: eu_uikit.EasyUnitsAssets.icons.settingsGray
                      .svg(colorFilter: selectedColor(3))),
            ],
          ),
        );
      },
    );
  }
}

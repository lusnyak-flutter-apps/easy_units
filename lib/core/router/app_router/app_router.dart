import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../presentations/example_uikit/example_uikit.dart';
import '../../../presentations/splash/splash_screen.dart';
import '../../../presentations/add_unit/add_unit_screen.dart';
import '../../../presentations/choose_unit_type/choose_unit_type_screen.dart';
import '../../../presentations/convert/convert_screen.dart';
import '../../../presentations/favorite/favorite_screen.dart';
import '../../../presentations/home/home_screen.dart';
import '../../../presentations/plans_screen/plans_screen.dart';
import '../../../presentations/settings/settings_screen.dart';

part 'app_router.gr.dart';

GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: ExampleRoute.page),
        AutoRoute(page: HomeRoute.page, children: [
          unitsTap,
          AutoRoute(page: FavoriteRoute.page),
          AutoRoute(page: PlansRoute.page),
          AutoRoute(page: SettingsRoute.page),
        ])
      ];
}

@RoutePage(name: 'UnitsTap')
class UnitsTapScreen extends AutoRouter {
  const UnitsTapScreen({super.key});
}

final unitsTap = AutoRoute(
  page: UnitsTap.page,
  children: [
    AutoRoute(
      page: ChooseUnitTypeRoute.page,
      initial: true,
    ),
    AutoRoute(page: ConvertRoute.page),
  ],
);

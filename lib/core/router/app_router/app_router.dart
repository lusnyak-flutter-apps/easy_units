import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../presentations/example_uikit/example_uikit.dart';
import '../../../presentations/splash/splash_screen.dart';

part 'app_router.gr.dart';

GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

@AutoRouterConfig()
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: ExampleRoute.page),
  ];
}

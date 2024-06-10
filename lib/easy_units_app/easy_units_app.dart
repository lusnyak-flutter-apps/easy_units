import 'package:eu_uikit/eu_uikit.dart' as eu_uikit;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/router/app_router/app_router.dart';

class EasyUnitsApp extends StatelessWidget {
   EasyUnitsApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return eu_uikit.ScreenUtilInit(
      designSize: const Size(360, 844),
      builder: (context, _) {
        return MaterialApp.router(
          key: rootNavigatorKey,
          debugShowCheckedModeBanner: false,
          theme: eu_uikit.lightTheme,
          darkTheme: eu_uikit.darkTheme,
          routerConfig: _appRouter.config(),
          locale: const Locale("ru"),
        );
      },
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:easy_units/core/router/app_router/app_router.dart';
import 'package:eu_uikit/eu_uikit.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      context.replaceRoute(const ExampleRoute());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(child: EasyUnitsAssets.icons.splashIcon.svg()),
      ),
    );
  }
}

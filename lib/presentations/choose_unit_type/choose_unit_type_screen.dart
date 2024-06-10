import 'package:auto_route/auto_route.dart';
import 'package:easy_units/core/router/app_router/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ChooseUnitTypeScreen extends StatelessWidget {
  const ChooseUnitTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose unit type"),
      ),
      body: SafeArea(
        child: Center(
          child: TextButton(onPressed: (){
            context.pushRoute(const ConvertRoute());
          }, child: const Text("Convert Screen")),
        ),
      ),
    );
  }
}
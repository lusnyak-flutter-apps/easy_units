import 'package:auto_route/auto_route.dart';
import 'package:eu_uikit/eu_uikit.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("UIKIT"),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: EasyUnitsAssets.icons.values
                .map((e) => SizedBox.square(
                      dimension: 50,
                      child: e.svg(),
                    ))
                .toList(),
          ).paddingSymmetric(horizontal: 16.w, vertical: 16.h),
        ),
      ),
    );
  }
}

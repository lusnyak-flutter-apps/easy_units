import 'package:auto_route/annotations.dart';
import 'package:easy_units/presentations/add_unit/add_unit_screen.dart';
import 'package:eu_uikit/eu_uikit.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ConvertScreen extends StatelessWidget {
  const ConvertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Convert"),
      ),
      body: SafeArea(
        child: Center(
          child: IconButton(
            icon: EasyUnitsAssets.icons.add.svg(),
            onPressed: () async {
              await showModalBottomSheet(
                useRootNavigator: true,
                context: context,
                builder: (bottomSheetContext) {
                  return const AddUnitScreen();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

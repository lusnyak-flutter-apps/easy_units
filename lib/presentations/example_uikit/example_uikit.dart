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
        child: ListView(
          children: [
            ExpansionTile(title: const Text("COLORS"),
              children: EUColors.all.map((e) => ListTile(
                leading: Container(width : 40, height:40,  decoration: BoxDecoration(color: e, border: Border.all()),),
                title: Text(e.toString()),
                contentPadding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
              )).toList(),
            ),
            ExpansionTile(title: const Text("ICONS"),
              children: EasyUnitsAssets.icons.values.map((e) => ListTile(
                leading: e.svg(width: 40.w),
                title: Text(e.path.split("/").last),
                contentPadding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
              )).toList(),
            ),
            ExpansionTile(title: const Text("TEXT STYLES"),
              children: textStyles.map((e) => ListTile(
                title: Text("${e.fontFamily?.split("/").last} ${e.fontWeight?.value} ${e.fontSize?.round()}", style: e,),
              )).toList()
            ),
          ],
        ),
      ),
    );
  }
}

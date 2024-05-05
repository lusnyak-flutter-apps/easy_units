import 'package:auto_route/annotations.dart';
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
        child: Container(),
      ),
    );
  }
}
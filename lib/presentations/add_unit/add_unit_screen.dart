import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AddUnitScreen extends StatelessWidget {
  const AddUnitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Unit"),
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
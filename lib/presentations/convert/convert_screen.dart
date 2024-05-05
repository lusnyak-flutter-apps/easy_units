import 'package:auto_route/annotations.dart';
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
        child: Container(),
      ),
    );
  }
}
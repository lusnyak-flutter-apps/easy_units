import 'package:flutter/material.dart';

import 'core/di/injection.dart';
import 'easy_units_app/easy_units_app.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  configureDependencies();
  runApp(EasyUnitsApp());
}

import 'package:flutter/material.dart';

import 'core/di/injection.dart';
import 'easy_units_app/easy_units_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(EasyUnitsApp());
}

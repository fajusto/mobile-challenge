import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile_challenge/app/app_module.dart';
import 'package:mobile_challenge/app/app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}
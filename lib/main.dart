import 'src/core/config/config.dart';
import 'package:flutter/material.dart';
import 'root.dart';

Future<void> main() async {
  // Dependency Injection (เลือก backend จริง/mock จาก AppEnv)
  await DependencyInjection.init();
  runApp(const RootApp());
}

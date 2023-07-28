import 'package:flutter/material.dart';
import 'package:madurai_ward_connect/src/backend/inject_dependencies.dart';
import 'package:madurai_ward_connect/src/presentation/screens/main_page.dart';

void main() {
  // GetX Dependency injection before the app rendering to cover the delay
  // with splash screen for better experience
  injectDependencies();

  // Run App
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

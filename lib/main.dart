import 'package:flutter/material.dart';
import 'package:madurai_ward_connect/src/presentation/screens/main_page.dart';
import 'package:madurai_ward_connect/src/presentation/themes/app_colors.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: AppColor.whatsAppTealGreen,
      theme: ThemeData(
          primaryColor: AppColor.whatsAppTealGreen,
          appBarTheme: AppBarTheme(color: AppColor.whatsAppTealGreen)),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:madurai_ward_connect/src/backend/inject_dependencies.dart';
import 'package:madurai_ward_connect/src/presentation/screens/sign_in/phone.dart';
import 'package:madurai_ward_connect/src/presentation/themes/app_colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:madurai_ward_connect/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
    return GetMaterialApp(
      color: AppColor.whatsAppTealGreen,
      theme: ThemeData(
          fontFamily: 'poppins',
          primarySwatch: Colors.green,
          primaryColor: AppColor.whatsAppTealGreen,
          appBarTheme: AppBarTheme(color: AppColor.whatsAppTealGreen)),
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

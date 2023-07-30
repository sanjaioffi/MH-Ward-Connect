import 'package:flutter/material.dart';
import 'package:madurai_ward_connect/src/presentation/themes/app_colors.dart';

AppBar buildApp(context) {
  return AppBar(
    backgroundColor: AppColor.whatsAppTealGreen,
    elevation: 1,
    leadingWidth: MediaQuery.of(context).size.width,
    leading: const Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 5,
      ),
      child: Text(
        "குழுமம்",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          letterSpacing: -1,
        ),
      ),
    ),
    actionsIconTheme: const IconThemeData(
      size: 25,
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.only(right: 15),
        child: Icon(
          Icons.search,
          color: AppColor.white,
        ),
      ),
      // Padding(
      //   padding: EdgeInsets.only(right: 15),
      //   child: Icon(
      //     Icons.chat,
      //     color: Colors.redAccent,
      //   ),
      // ),
      // Padding(
      //   padding: EdgeInsets.only(right: 15),
      //   child: Icon(
      //     Icons.group,
      //     color: Colors.blueGrey,
      //   ),
      // ),
      // Icon(
      //   Icons.notifications,
      //   color: Colors.blue,
      // ),
    ],
  );
}

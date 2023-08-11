import 'package:flutter/material.dart';
import 'package:madurai_ward_connect/src/presentation/themes/app_colors.dart';

class TopDialouge extends StatelessWidget {
  const TopDialouge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      child: SizedBox(
        child: Text(
          "Drag the location marker to update location",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: AppColor.whatsAppTealGreen,
          ),
        ),
      ),
    );
  }
}

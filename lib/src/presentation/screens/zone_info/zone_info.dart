import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/location_controller.dart';
import '../../themes/app_colors.dart';

class ZoneInfoScreen extends StatelessWidget {
  const ZoneInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List zoneList = [
      'EAST - ZONE I',
      'NORTH - ZONE II',
      'CENTRAL - ZONE III',
      'SOUTH - ZONE IV',
      'WEST - ZONE V'
    ];
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          GetBuilder<LocationController>(builder: ((controller) {
            return Card(
              child: ListTile(
                title: controller.isLoading.value
                    ? const Column(
                        children: [
                          SizedBox(
                              child: LinearProgressIndicator(
                            backgroundColor: AppColor.whatsAppLightGreen,
                            color: AppColor.whatsAppTealGreen,
                          )),
                          Text(
                            'Fetching Current Location...',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Text(
                            zoneList[controller.zoneNo.value - 1],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 20,
                                color: AppColor.whatsAppTealGreen,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
              ),
            );
          })),
        ],
      )),
    );
  }
}

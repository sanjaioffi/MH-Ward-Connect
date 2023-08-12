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
      child:
          Scaffold(body: GetBuilder<LocationController>(builder: ((controller) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Card(
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
              ),
              ExpansionTile(
                title: Text('Hospitals Near You'),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        '''Hospitals in Kottai Street, Thiruparankundram,Tirupparangunram
                  atchaya mobile
                  313; Big Car St; Thiruparankundram; Tamil Nadu 625005; India
                  0.1 KM distance      Detail
                  Sai Mission Hospital
                  21; GST Main Rd; Thiruparankundram; Tamil Nadu; India
                  0.1 KM distance      Detail
                  G.P.Hahnemann Homeopathy Hospital and Research Centre
                  W Car St; Thiruparankundram; Tamil Nadu 625005; India
                  0.4 KM distance      Detail
                  Vijaya Hospital
                  Thiruparankundram Sannithi St; Thiruparankundram; Tamil Nadu 625005; India
                  0.4 KM distance      Detail'''),
                  )
                ],
              ),
              ExpansionTile(title: Text('Arasu e-Sevai centres Near You')),
              ExpansionTile(
                title: Text('ATM centres Near You'),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        '''ATMs in Kottai Street, Thiruparankundram,Tirupparangunram
                  Sbi Atm
                  260; Big Car St; Thiruparankundram; Tamil Nadu 625005; India
                  0.1 KM distance      CashStatus
                  Indian Bank ATM
                  Big Car St; Thiruparankundram; Madurai; Tamil Nadu 625005; India
                  0.2 KM distance      CashStatus
                  Punjab National Bank ATM
                  Ekrr Rani Mahal; 8/62; Sannithi St; Thiruparankundram; Madurai; Tamil Nadu 625005; India
                  0.3 KM distance      CashStatus
                  Canara Bank ATM
                  Sannithi St; Nilaiyur; Thiruparankundram; Madurai; Tamil Nadu 625005; India
                  0.5 KM distance      CashStatus'''),
                  )
                ],
              )
            ],
          ),
        );
      }))),
    );
  }
}

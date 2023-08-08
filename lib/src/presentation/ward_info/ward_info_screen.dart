import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:madurai_ward_connect/src/data/models/councillor_model.dart';

import '../../controller/location_controller.dart';
import '../themes/app_colors.dart';

class WardInfoScreen extends StatelessWidget {
  const WardInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocationController>(builder: ((controller) {
      return Scaffold(
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () => controller.updateWardNo(),
          //   child: const Icon(Icons.location_on),
          // ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        'Councilor Details',
                        style: TextStyle(
                            color: AppColor.whatsAppTealGreen,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      child: Column(
                        children: [
                          AspectRatio(
                            aspectRatio: 1,
                            child: Image.network(
                              councillorData[controller.wardNo.value - 1].photoUrl,
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                'Name : ',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                child: Text(
                                  councillorData[controller.wardNo.value - 1].name,
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            color: Colors.black,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                'Address : ',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                child: Text(
                                  councillorData[controller.wardNo.value - 1]
                                      .address,
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            color: Colors.black,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                'Contact No : ',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                child: Text(
                                  councillorData[controller.wardNo.value - 1]
                                      .contactNo,
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                          councillorData[controller.wardNo.value - 1].emailId == ''
                              ? SizedBox()
                              : const Divider(
                                  color: Colors.black,
                                ),
                          councillorData[controller.wardNo.value - 1].emailId == ''
                              ? const SizedBox()
                              : Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Email Id : ',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Expanded(
                                      child: Text(
                                        councillorData[controller.wardNo.value - 1]
                                            .emailId,
                                        style: const TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                          const Divider(
                            color: Colors.black,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Expanded(
                                child: Text(
                                  'Additional Responsibility : ',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  councillorData[controller.wardNo.value - 1]
                                      .additionalResponsibility,
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            color: Colors.black,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                'Party Name : ',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                child: Text(
                                  councillorData[controller.wardNo.value - 1]
                                      .partyName,
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ));
    }));
  }
}

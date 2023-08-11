// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madurai_ward_connect/src/data/models/ward_authorities_models.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../controller/location_controller.dart';
import '../../themes/app_colors.dart';

class ComplaintScreen extends StatefulWidget {
  const ComplaintScreen({super.key});

  @override
  State<ComplaintScreen> createState() => _ComplaintScreenState();
}

class _ComplaintScreenState extends State<ComplaintScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController issueController = TextEditingController();
  String selectedDepartment =
      'Engineering (Roads, Water Supply,Street Light, Builldings)';
  List zoneList = [
    'EAST - ZONE I',
    'NORTH - ZONE II',
    'CENTRAL - ZONE III',
    'SOUTH - ZONE IV',
    'WEST - ZONE V'
  ];
  @override
  Widget build(BuildContext context) {
    void showConfirmationDialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Responsible Authority'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (selectedDepartment[0] == 'E' &&
                    wardauthorities[
                                Get.find<LocationController>().wardNo.value - 1]
                            .aeje !=
                        '')
                  const Text(
                    'AEJE',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                if (selectedDepartment[0] == 'E' &&
                    wardauthorities[
                                Get.find<LocationController>().wardNo.value - 1]
                            .aeje !=
                        '')
                  Row(
                    children: [
                      const Text('Name : ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(wardauthorities[
                              Get.find<LocationController>().wardNo.value - 1]
                          .aeje
                          .split("@")[0]),
                    ],
                  ),
                if (selectedDepartment[0] == 'E' &&
                    wardauthorities[
                                Get.find<LocationController>().wardNo.value - 1]
                            .aeje !=
                        '')
                  WhatsaapButton(
                      name: nameController.text,
                      address: addressController.text,
                      issue: issueController.text,
                      phoneNo: wardauthorities[
                              Get.find<LocationController>().wardNo.value - 1]
                          .aeje
                          .split("@")[1]),
                if (selectedDepartment[0] == 'E' &&
                    wardauthorities[
                                Get.find<LocationController>().wardNo.value - 1]
                            .skilledAssistant !=
                        '')
                  const Text(
                    'Skilled Assistant',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                if (selectedDepartment[0] == 'E' &&
                    wardauthorities[
                                Get.find<LocationController>().wardNo.value - 1]
                            .skilledAssistant !=
                        '')
                  Row(
                    children: [
                      const Text('Name : ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(wardauthorities[
                              Get.find<LocationController>().wardNo.value - 1]
                          .skilledAssistant
                          .split("@")[0]),
                    ],
                  ),
                if (selectedDepartment[0] == 'E' &&
                    wardauthorities[
                                Get.find<LocationController>().wardNo.value - 1]
                            .skilledAssistant !=
                        '')
                  WhatsaapButton(
                      name: nameController.text,
                      address: addressController.text,
                      issue: issueController.text,
                      phoneNo: wardauthorities[
                              Get.find<LocationController>().wardNo.value - 1]
                          .skilledAssistant
                          .split("@")[1]),

                ///------------------
                if (selectedDepartment == 'Revenue' &&
                    wardauthorities[
                                Get.find<LocationController>().wardNo.value - 1]
                            .billCollector !=
                        '')
                  const Text(
                    'Bill Collector',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                if (selectedDepartment == 'Revenue' &&
                    wardauthorities[
                                Get.find<LocationController>().wardNo.value - 1]
                            .billCollector !=
                        '')
                  Row(
                    children: [
                      const Text('Name : ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(wardauthorities[
                              Get.find<LocationController>().wardNo.value - 1]
                          .billCollector
                          .split("@")[0]),
                    ],
                  ),
                if (selectedDepartment == 'Revenue' &&
                    wardauthorities[
                                Get.find<LocationController>().wardNo.value - 1]
                            .billCollector !=
                        '')
                  WhatsaapButton(
                      name: nameController.text,
                      address: addressController.text,
                      issue: issueController.text,
                      phoneNo: wardauthorities[
                              Get.find<LocationController>().wardNo.value - 1]
                          .billCollector
                          .split("@")[1]),

                ///------------------
                if (selectedDepartment == 'Sanitation' &&
                    wardauthorities[
                                Get.find<LocationController>().wardNo.value - 1]
                            .sanitaryInspector !=
                        '')
                  const Text(
                    'Sanitary Inspector',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                if (selectedDepartment == 'Sanitation' &&
                    wardauthorities[
                                Get.find<LocationController>().wardNo.value - 1]
                            .sanitaryInspector !=
                        '')
                  Row(
                    children: [
                      const Text('Name : ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(wardauthorities[
                              Get.find<LocationController>().wardNo.value - 1]
                          .sanitaryInspector
                          .split("@")[0]),
                    ],
                  ),
                if (selectedDepartment == 'Sanitation' &&
                    wardauthorities[
                                Get.find<LocationController>().wardNo.value - 1]
                            .sanitaryInspector !=
                        '')
                  WhatsaapButton(
                      name: nameController.text,
                      address: addressController.text,
                      issue: issueController.text,
                      phoneNo: wardauthorities[
                              Get.find<LocationController>().wardNo.value - 1]
                          .sanitaryInspector
                          .split("@")[1]),
                if (selectedDepartment == 'Sanitation' &&
                    wardauthorities[
                                Get.find<LocationController>().wardNo.value - 1]
                            .sanitarySupervisor !=
                        '')
                  const Text(
                    'Sanitary Supervisor',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                if (selectedDepartment == 'Sanitation' &&
                    wardauthorities[
                                Get.find<LocationController>().wardNo.value - 1]
                            .sanitarySupervisor !=
                        '')
                  Row(
                    children: [
                      const Text('Name : ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(wardauthorities[
                              Get.find<LocationController>().wardNo.value - 1]
                          .sanitarySupervisor
                          .split("@")[0]),
                    ],
                  ),
                if (selectedDepartment == 'Sanitation' &&
                    wardauthorities[
                                Get.find<LocationController>().wardNo.value - 1]
                            .sanitarySupervisor !=
                        '')
                  WhatsaapButton(
                      name: nameController.text,
                      address: addressController.text,
                      issue: issueController.text,
                      phoneNo: wardauthorities[
                              Get.find<LocationController>().wardNo.value - 1]
                          .sanitarySupervisor
                          .split("@")[1]),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Okay'),
              ),
            ],
          );
        },
      );
    }

    @override
    void dispose() {
      nameController.dispose();
      addressController.dispose();
      issueController.dispose();
      super.dispose();
    }

    return GetBuilder<LocationController>(builder: ((controller) {
      return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Raise Complaint',
                      style: TextStyle(
                          color: AppColor.whatsAppTealGreen,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                      leading: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('Ward No : ', style: TextStyle()),
                          Text(controller.wardNo.value.toString(),
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.whatsAppTealGreen)),
                        ],
                      ),
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
                                  controller.locationData.value,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  zoneList[controller.zoneNo.value - 1],
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 15,
                                      color: AppColor.whatsAppTealGreen),
                                )
                              ],
                            ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                        labelText: 'Name', border: OutlineInputBorder()),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: addressController,
                    decoration: const InputDecoration(
                        labelText: 'Address', border: OutlineInputBorder()),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: issueController,
                    maxLines: null,
                    decoration: const InputDecoration(
                        labelText: 'Issue', border: OutlineInputBorder()),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButtonFormField<String>(
                    isExpanded: true,
                    value: selectedDepartment,
                    onChanged: (value) {
                      setState(() {
                        selectedDepartment = value!;
                      });
                    },
                    items: [
                      'Engineering (Roads, Water Supply,Street Light, Builldings)',
                      'Sanitation',
                      'Revenue',
                    ]
                        .map(
                          (department) => DropdownMenuItem<String>(
                            value: department,
                            child: Text(department),
                          ),
                        )
                        .toList(),
                    decoration: const InputDecoration(labelText: 'Department'),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.whatsAppLightGreen,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {
                          showConfirmationDialog();
                        },
                        child: const Text("Register Complaint")),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }));
  }
}

class WhatsaapButton extends StatelessWidget {
  WhatsaapButton({
    super.key,
    required this.name,
    required this.address,
    required this.issue,
    required this.phoneNo,
  });

  String name;
  String address;
  String issue;
  String phoneNo;

  void sendWhatsAppMessage(String phoneNumber) async {
    final String message =
        'A complaint from MDU Ward Connect Mobile App\n\nName : $name\naddress : $address\nIssue : $issue';

    final url = 'https://wa.me/$phoneNumber?text=$message';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.whatsAppLightGreen,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: () {
              sendWhatsAppMessage(phoneNo);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/icons/whatsapp.png',
                  width: 30,
                ),
                Text(phoneNo,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox()
              ],
            )),
      ),
    );
  }
}

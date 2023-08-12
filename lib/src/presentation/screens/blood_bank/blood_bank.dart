import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madurai_ward_connect/src/presentation/screens/blood_bank/blood_bank2.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../themes/app_colors.dart';

class BloodGroupUsersScreen extends StatefulWidget {
  BloodGroupUsersScreen({super.key});

  @override
  State<BloodGroupUsersScreen> createState() => _BloodGroupUsersScreenState();
}

class _BloodGroupUsersScreenState extends State<BloodGroupUsersScreen> {
  String bloodGroup = 'B+';

  TextEditingController nameController = TextEditingController();

  TextEditingController reasonController = TextEditingController();

  void sendWhatsAppMessage(String phoneNumber, String Message) async {
    final String message = Message;

    final url = 'https://wa.me/$phoneNumber?text=$message';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  final List<String> bloodGroups = [
    'A+',
    'A-',
    'B+',
    'B-',
    'AB+',
    'AB-',
    'O+',
    'O-',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users with Blood Group $bloodGroup'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                  labelText: 'Patient Name', border: OutlineInputBorder()),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: reasonController,
              maxLines: null,
              decoration: const InputDecoration(
                  labelText: 'Issue', border: OutlineInputBorder()),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Text(
                    'Blood Group',
                    style: TextStyle(
                      color: AppColor.whatsAppTealGreen,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: bloodGroup,
                      onChanged: (String? newValue) {
                        setState(() {
                          bloodGroup = newValue!;
                        });
                      },
                      items: bloodGroups
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
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
                    Get.to(DonorsPage(bloodGroup: bloodGroup));
                  },
                  child: const Text("Find Donars")),
            ),
          ),
        ],
      ),
    );
  }
}

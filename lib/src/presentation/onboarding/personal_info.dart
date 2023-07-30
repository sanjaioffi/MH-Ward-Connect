// Name, Mobile, blood group

import 'package:flutter/material.dart';
import 'package:madurai_ward_connect/src/presentation/themes/app_colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: Container(),
        title: const Text(
          "Profile Details",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const UserInfo(
                fieldName: "User Name",
                fieldIcon: Icons.person,
              ),
              const UserInfo(
                fieldName: "Age",
                fieldIcon: Icons.timelapse,
              ),
              const UserInfo(
                fieldName: "Mobile No",
                fieldIcon: Icons.call,
              ),
              const UserInfo(
                fieldName: "Address",
                fieldIcon: Icons.home,
              ),
              const UserInfo(
                fieldName: "Blood Group",
                fieldIcon: Icons.water_drop_rounded,
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
    required this.fieldName,
    required this.fieldIcon,
  });

  final String fieldName;
  final IconData fieldIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Text(
              fieldName,
              style: const TextStyle(
                color: AppColor.whatsAppTealGreen,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColor.grey,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(fieldIcon),
                  border: InputBorder.none,
                  hintText: "Enter your ${fieldName.toLowerCase()}",
                  prefixIconColor: AppColor.whatsAppTealGreen,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

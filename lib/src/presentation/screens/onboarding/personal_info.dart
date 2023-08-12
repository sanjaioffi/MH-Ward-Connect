// Name, Mobile, blood group

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:madurai_ward_connect/src/controller/user_controller.dart';
import 'package:madurai_ward_connect/src/presentation/screens/main_page.dart';
import 'package:madurai_ward_connect/src/presentation/themes/app_colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  String bloodGroup = 'A+';
  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController address = TextEditingController();

  TextEditingController lastDonated = TextEditingController();
  final AuthController authController = Get.find();
  @override
  Widget build(BuildContext context) {
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                      'User Name',
                      style: TextStyle(
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
                        controller: name,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          border: InputBorder.none,
                          hintText: "Enter your name",
                          prefixIconColor: AppColor.whatsAppTealGreen,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
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
                      'Age',
                      style: TextStyle(
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
                        controller: age,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          border: InputBorder.none,
                          hintText: "Enter your age",
                          prefixIconColor: AppColor.whatsAppTealGreen,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
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
                      'Address',
                      style: TextStyle(
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
                        controller: address,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.home),
                          border: InputBorder.none,
                          hintText: "Enter your address",
                          prefixIconColor: AppColor.whatsAppTealGreen,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
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
                      'Last Date of Blood Donation ',
                      style: TextStyle(
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
                        controller: lastDonated,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.history),
                          border: InputBorder.none,
                          hintText: "dd/mm/yyyy",
                          prefixIconColor: AppColor.whatsAppTealGreen,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
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
                      print([name, age, address, bloodGroup]);

                      saveUserDetails(
                          authController.uid!,
                          name.text,
                          address.text,
                          age.text,
                          bloodGroup,
                          lastDonated.text,
                          authController.userPhone!);

                      // Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => OnboardingScreen()));
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainScreen(),
                        ),
                      );
                    },
                    child: const Text("Sign Up")),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Future<void> saveUserDetails(
      String userId,
      String name,
      String address,
      String age,
      String bloodGroup,
      String lastBloodDonated,
      String phone) async {
    try {
      await FirebaseFirestore.instance.collection('users').doc(userId).set({
        'name': name,
        'address': address,
        'age': age,
        'bloodGroup': bloodGroup,
        'lastBloodDonated': lastBloodDonated,
        'phoneNo': phone,
        'complaints' : [],
        'posts': []
      });
    } catch (e) {
      print('Error saving user details and posts: $e');
      // Handle error
    }
  }
}

// class UserInfo extends StatelessWidget {
//   UserInfo({
//     super.key,
//     required this.fieldName,
//     required this.fieldIcon,
//     required this.variable,
//   });

//   final String fieldName;
//   final IconData fieldIcon;
//   String variable;

//   @override
//   Widget build(BuildContext context) {
//     TextEditingController valueController = TextEditingController();
//     variable = valueController.text;
//     return Container(
//       margin: const EdgeInsets.symmetric(
//         horizontal: 10,
//         vertical: 5,
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(
//               vertical: 10,
//             ),
//             child: Text(
//               fieldName,
//               style: const TextStyle(
//                 color: AppColor.whatsAppTealGreen,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 18,
//               ),
//             ),
//           ),
//           Container(
//             decoration: BoxDecoration(
//               border: Border.all(
//                 color: AppColor.grey,
//               ),
//               borderRadius: const BorderRadius.all(
//                 Radius.circular(15),
//               ),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(
//                 vertical: 5,
//               ),
//               child: TextField(
//                 controller: valueController,
//                 decoration: InputDecoration(
//                   prefixIcon: Icon(fieldIcon),
//                   border: InputBorder.none,
//                   hintText: "Enter your ${fieldName.toLowerCase()}",
//                   prefixIconColor: AppColor.whatsAppTealGreen,
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(height: 20),
//         ],
//       ),
//     );
//   }
// }

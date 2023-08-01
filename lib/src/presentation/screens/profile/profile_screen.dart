import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:madurai_ward_connect/src/controller/user_controller.dart';
import 'package:madurai_ward_connect/src/presentation/themes/app_colors.dart';

// show online users to get quick response for emeregeency

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController _authController = Get.find();
    int followersCount = 500; // Replace with actual follower count
    int followingCount = 250; // Replace with actual following count
    int Badges = 5; // Replace with actual following count
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading:
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
            title: Text(
              'Profile',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1,
              ),
            ),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
          ),
          body: 
           StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        stream: getUserDetailsStream(_authController.authorizedUser!.uid),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error fetching data'),
            );
          } else {
            if (snapshot.hasData) {
              var userDetails = snapshot.data!.data();
              String name = userDetails!['name'] ?? '';
              String address = userDetails['address'] ?? '';
              String dob = userDetails['dob'] ?? '';
              String bloodGroup = userDetails['bloodGroup'] ?? '';
              String lastBloodDonated = userDetails['lastBloodDonated'] ?? '';

              return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg')),
                    SizedBox(
                      width: 20,
                    ),

                    
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: AppColor.whatsAppTealGreen,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                // _authController.authorizedUser != null
                //     ? Text(
                //         'Authorized User: ${_authController.authorizedUser!.uid}')
                //     : Text('User not authorized.'),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Emergency Informations',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      'Blood Group: $bloodGroup',
                      style: TextStyle(
                          color: AppColor.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '   (Last Donated: $lastBloodDonated)',
                      style: TextStyle(
                          color: AppColor.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Emergency contact: ${_authController.authorizedUser!.phoneNumber}',
                  style: TextStyle(
                      color: AppColor.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Emergency address : $address',
                  style: TextStyle(
                      color: AppColor.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    width: double.infinity,
                    child: Card(
                      elevation: 3,
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(
                              color: AppColor.whatsAppTealGreen,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                    ),
                  ),
                )
              ],
            ),
          );
            } else {
              return Center(
                child: Text('User not found'),
              );
            }
          }
        },
      ),
    )
          
          
          
          
          
    );
  }

  // Function to get the user details from Firestore based on the user ID
Stream<DocumentSnapshot<Map<String, dynamic>>> getUserDetailsStream(String userId) {
  return FirebaseFirestore.instance.collection('users').doc(userId).snapshots();
}
}

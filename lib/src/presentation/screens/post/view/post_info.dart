import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:get/get.dart';
import 'package:madurai_ward_connect/src/presentation/themes/app_colors.dart';

import '../../../../controller/user_controller.dart';

class PostUserInfo extends StatelessWidget {
  PostUserInfo({
    super.key,
  });
  final AuthController _authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
      stream: getUserDetailsStream(_authController.uid!),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return const Center(
            child: Text('Error fetching data'),
          );
        } else {
          if (snapshot.hasData) {
            var userDetails = snapshot.data!.data();

            String name = userDetails!['name'] ?? '';
            _authController.setUserName(name);
            // String address = userDetails['address'] ?? '';
            // String dob = userDetails['dob'] ?? '';
            // String bloodGroup = userDetails['bloodGroup'] ?? '';
            // String lastBloodDonated = userDetails['lastBloodDonated'] ?? '';

            return Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 8.0,
              ),
              child: Row(
                children: [
                  ProfilePicture(name: name, radius: 25, fontsize: 20),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const Center(
              child: Text('User not found'),
            );
          }
        }
      },
    );
  }

  // Function to get the user details from Firestore based on the user ID
  Stream<DocumentSnapshot<Map<String, dynamic>>> getUserDetailsStream(
      String userId) {
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .snapshots();
  }
}

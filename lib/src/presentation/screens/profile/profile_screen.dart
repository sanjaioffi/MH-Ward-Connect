import 'package:flutter/material.dart';
import 'package:madurai_ward_connect/src/presentation/themes/app_colors.dart';

// show online users to get quick response for emeregeency

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          body: Padding(
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

                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //   children: [
                    //     Column(
                    //       children: [
                    //         Text(
                    //           followingCount.toString(),
                    //           style: TextStyle(
                    //               color: AppColor.black,
                    //               fontSize: 25,
                    //               fontWeight: FontWeight.bold),
                    //         ),
                    //         Text(
                    //           'Following',
                    //           style: TextStyle(
                    //               color: AppColor.whatsAppTealGreen,
                    //               fontSize: 20,
                    //               fontWeight: FontWeight.bold),
                    //         )
                    //       ],
                    //     ),
                    //     Column(
                    //       children: [
                    //         Text(
                    //           followersCount.toString(),
                    //           style: TextStyle(
                    //               color: AppColor.black,
                    //               fontSize: 25,
                    //               fontWeight: FontWeight.bold),
                    //         ),
                    //         Text(
                    //           'Followers',
                    //           style: TextStyle(
                    //               color: AppColor.whatsAppTealGreen,
                    //               fontSize: 20,
                    //               fontWeight: FontWeight.bold),
                    //         )
                    //       ],
                    //     ),
                    //     Column(
                    //       children: [
                    //         Text(
                    //           Badges.toString(),
                    //           style: TextStyle(
                    //               color: AppColor.black,
                    //               fontSize: 25,
                    //               fontWeight: FontWeight.bold),
                    //         ),
                    //         Text(
                    //           'Badges',
                    //           style: TextStyle(
                    //               color: AppColor.whatsAppTealGreen,
                    //               fontSize: 20,
                    //               fontWeight: FontWeight.bold),
                    //         )
                    //       ],
                    //     ),
                    //   ],
                    // ),
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
                      'Sanjai Prabhakaran',
                      style: TextStyle(
                          color: AppColor.whatsAppTealGreen,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
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
                      'Blood Group: B+ve',
                      style: TextStyle(
                          color: AppColor.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '   (Last Donated: 12/02/2022)',
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
                  'Emergency contact: 902516807',
                  style: TextStyle(
                      color: AppColor.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Emergency address : 12/2, 2nd street, madurai-625001',
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
          )),
    );
  }
}

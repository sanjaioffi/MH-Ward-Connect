import 'package:flutter/material.dart';
import 'package:madurai_ward_connect/src/presentation/themes/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int followersCount = 500; // Replace with actual follower count
    int followingCount = 250; // Replace with actual following count
    int posts = 20; // Replace with actual following count
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading:
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
            title: Text('Profile'),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.edit))],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sanjai Prabhakaran',
                          style: TextStyle(
                              color: AppColor.whatsAppTealGreen,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Something about the user',
                          style: TextStyle(
                              color: AppColor.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          followingCount.toString(),
                          style: TextStyle(
                              color: AppColor.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(
                              color: AppColor.whatsAppTealGreen,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          followersCount.toString(),
                          style: TextStyle(
                              color: AppColor.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(
                              color: AppColor.whatsAppTealGreen,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          posts.toString(),
                          style: TextStyle(
                              color: AppColor.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Posts',
                          style: TextStyle(
                              color: AppColor.whatsAppTealGreen,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
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
                )
              ],
            ),
          )),
    );
  }
}

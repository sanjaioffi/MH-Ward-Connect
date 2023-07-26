import 'package:flutter/material.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/community_screen.dart';
import 'package:madurai_ward_connect/src/presentation/screens/home/home_screen.dart';
import 'package:madurai_ward_connect/src/presentation/screens/map/maps_screen.dart';
import 'package:madurai_ward_connect/src/presentation/screens/profile/profile_screen.dart';
import 'package:madurai_ward_connect/src/presentation/themes/app_colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  // Properties & Variables needed

  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    const HomeScreen(),
    const MapsScreen(),
    const CommunityScreen(),
    const ProfileScreen()
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.whatsAppTealGreen,
        child: const Icon(Icons.add),
        onPressed: () {
          _showOptionsBottomSheet(context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: AppColor.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            const HomeScreen(); // if user taps on this dashboard tab will be active
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.home,
                            color: currentTab == 0
                                ? AppColor.whatsAppTealGreen
                                : AppColor.grey),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: currentTab == 0
                                ? AppColor.whatsAppTealGreen
                                : AppColor.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            const MapsScreen(); // if user taps on this dashboard tab will be active
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.map,
                            color: currentTab == 1
                                ? AppColor.whatsAppTealGreen
                                : AppColor.grey),
                        Text(
                          'Map',
                          style: TextStyle(
                            color: currentTab == 1
                                ? AppColor.whatsAppTealGreen
                                : AppColor.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              // Right Tab bar icons

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            const CommunityScreen(); // if user taps on this dashboard tab will be active
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.group,
                            color: currentTab == 2
                                ? AppColor.whatsAppTealGreen
                                : AppColor.grey),
                        Text(
                          'Community',
                          style: TextStyle(
                              color: currentTab == 2
                                  ? AppColor.whatsAppTealGreen
                                  : AppColor.grey),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            const ProfileScreen(); // if user taps on this dashboard tab will be active
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.person_4_rounded,
                            color: currentTab == 3
                                ? AppColor.whatsAppTealGreen
                                : AppColor.grey),
                        Text(
                          'Profile',
                          style: TextStyle(
                              color: currentTab == 3
                                  ? AppColor.whatsAppTealGreen
                                  : AppColor.grey),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showOptionsBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: AppColor.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Post',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: AppColor.black)),
                    Icon(Icons.close, color: AppColor.black)
                  ],
                ),
              ),
              const SizedBox(height: 10),
              _buildOptionTile(Icons.flag_outlined, 'Post a Complaint', () {
                // Handle post a complaint action
                Navigator.pop(context); // Close the bottom sheet
              }),
              _buildOptionTile(Icons.question_answer_outlined, 'Post a Query',
                  () {
                // Handle post a query action
                Navigator.pop(context); // Close the bottom sheet
              }),
              _buildOptionTile(Icons.star_border_outlined, 'Post a Milestone',
                  () {
                // Handle post a milestone action
                Navigator.pop(context); // Close the bottom sheet
              }),
            ],
          ),
        );
      },
    );
  }

  Widget _buildOptionTile(IconData iconData, String title, VoidCallback onTap) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      leading: CircleAvatar(
        radius: 22,
        backgroundColor: AppColor.white,
        child: Icon(
          iconData,
          color: AppColor.grey,
          size: 24,
        ),
      ),
      title: Text(title),
      onTap: onTap,
    );
  }
}

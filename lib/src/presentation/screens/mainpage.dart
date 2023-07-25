import 'package:flutter/material.dart';
import 'package:madurai_ward_connect/src/presentation/screens/chat_bot_screen.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community_screen.dart';
import 'package:madurai_ward_connect/src/presentation/screens/home_screen.dart';
import 'package:madurai_ward_connect/src/presentation/screens/maps_screen.dart';
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
    const ChatBotScreen()
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.whatsAppTealGreen,
        child: const Icon(Icons.add),
        onPressed: () {},
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
                                  : AppColor.grey),
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
                            const ChatBotScreen(); // if user taps on this dashboard tab will be active
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.chat,
                            color: currentTab == 3
                                ? AppColor.whatsAppTealGreen
                                : AppColor.grey),
                        Text(
                          'ChatBot',
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
}

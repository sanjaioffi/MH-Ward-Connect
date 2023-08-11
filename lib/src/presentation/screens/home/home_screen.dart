import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:madurai_ward_connect/src/controller/location_controller.dart';
import 'package:madurai_ward_connect/src/data/models/councillor_model.dart';
import 'package:madurai_ward_connect/src/presentation/screens/chat/chat_screen.dart';
import 'package:madurai_ward_connect/src/presentation/screens/map/main_map.dart';
import 'package:madurai_ward_connect/src/presentation/themes/app_colors.dart';
import 'package:marquee/marquee.dart';
import 'package:geolocator/geolocator.dart';

import '../complaint/complaint_screen.dart';
import '../ward_info/ward_info_screen.dart';
import '../zone_info/zone_info.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> wardNames = [
    'Santhi Nagar',
    'Koodal Nagar',
    'Anaiyur',
    'Sambandhar Alankulam',
    'B.B.Kulam',
    'Meenambalpuram',
    'Kailaasapuram',
    'Vilangudi',
    'Thathaneri',
    'Aarappalayam',
    'Ponnaharam',
    'Krishnaapalayam',
    'Azhagaradi',
    'Viswasapuri',
    'Melapponnaharam',
    'Railway Colony',
    'Ellis Nagar',
    'S.S.Colony',
    'Ponmeni',
    'Arasaradi Othakkadai',
    'Bethaniyapuram',
    'Kochadai',
    'Visalakshi Nagar',
    'Thiruppaalai',
    'Kannanendhal',
    'Parasuraamanpatti',
    'Karpaga Nagar',
    'Uthangudi',
    'Masthaanpatti',
    'Melamadai',
    'Tahsildhar Nagar',
    'Vandiyur',
    'Saathamangalam',
    'Arignar Anna Nagar',
    'Madhichiyam',
    'Aazhwarpuram',
    'Sellur',
    'Pandhalkudi',
    'Goripalayam',
    'Ahimsapuram',
    'Narimedu',
    'Chokkikulam',
    'Tallakulam',
    'K.K.Nagar',
    'Pudur',
    'Lourdhu Nagar',
    'Reserve Line',
    'Aathikulam',
    'Naahanakulam',
    'Swami Sannidhi',
    'Ismailpuram',
    'Sourashtra Hr. Sec. School',
    'Pangajam Colony',
    'Mariamman Theppakulam',
    'Iraavadhanallur',
    'Sinna Anuppanadi',
    'Anuppanadi',
    'Chinthamani',
    'Meenakshi Nagar',
    'Avaniyaapuram',
    'Villapuram Pudhu Nagar',
    'Kathirvel Nagar',
    'Villaapuram',
    'Keeraithurai',
    'Sappani Kovil',
    'South Krishnan Kovil',
    'Manjanakara Street',
    'Dhrowpathi Amman Kovil',
    'St.Marys',
    'Kaamarajapuram',
    'Balaranganathapuram',
    'Navarathinapuram',
    'Lakshmipuram',
    'Thirumalai Naicker Mahal',
    'Maadakkulam',
    'Pazhangaanatham',
    'Sundarajapuram',
    'Madurai Baskaradass Nagar',
    'Perumal Theppakulam',
    'Krishnarayar Theppakulam',
    'Tamilsangam',
    'Sokkanadhar Kovil',
    'North Krishnan Kovil',
    'Meenakshi Kovil',
    'Jadamuni Kovil',
    'Kaajimar Street',
    'Subramaniapuram',
    'Solai Azhagupuram',
    'Jaihindpuram',
    'Veerakali Amman Kovil',
    'Thennaharam',
    'Kovalan Nagar',
    'T.V.S.Nagar',
    'Paamban Swami Nagar',
    'Mannar College',
    'Thirupparamkundram',
    'Haarvipatti',
    'Thirunahar',
    'Balaji Nagar',
    'Muthuramalingapuram',
  ];
  List<String> imageList = [
    'https://imgnew.outlookindia.com/public/uploads/articles/2020/8/18/Meenakshi_Amman_Temple,_Madurai.jpg',
    'https://static.india.com/wp-content/uploads/2019/01/Madurai.jpg',
    'https://imgnew.outlookindia.com/public/uploads/articles/2020/8/18/Meenakshi_Amman_Temple,_Madurai.jpg',
    // Add more image URLs here
  ];
  int _currentIndex = 0;
  String notificationText =
      "CityConnect is your go-to app for staying informed and engaged with everything happening in our wonderful city. Whether you're a resident, visitor, or local business, this app is designed to keep you connected to the heartbeat of our community.";

  TextEditingController wardName = TextEditingController();
  List zoneList = [
    'EAST - ZONE I',
    'NORTH - ZONE II',
    'CENTRAL - ZONE III',
    'SOUTH - ZONE IV',
    'WEST - ZONE V'
  ];
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    wardName.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Marvel Madurai',
                      style: TextStyle(
                          color: AppColor.whatsAppTealGreen,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ChatScreen(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'assets/icons/chatbot.png',
                        color: AppColor.whatsAppTealGreen,
                        width: 35,
                        height: 35,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            const Icon(Icons.search, color: AppColor.grey),
                            const SizedBox(width: 8),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  // Show the suggestion list here
                                },
                                child: TypeAheadField(
                                  textFieldConfiguration:
                                      TextFieldConfiguration(
                                    controller: TextEditingController(),
                                    decoration: const InputDecoration(
                                      hintText: 'Search Wards...',
                                      border: InputBorder.none,
                                    ),
                                  ),
                                  suggestionsCallback: (pattern) async {
                                    return wardNames
                                        .where((item) => item
                                            .toLowerCase()
                                            .contains(pattern.toLowerCase()))
                                        .toList();
                                  },
                                  itemBuilder: (context, suggestion) {
                                    return ListTile(
                                      title: Text(suggestion),
                                    );
                                  },
                                  onSuggestionSelected: (suggestion) {
                                    Get.find<LocationController>()
                                        .updateLocation(suggestion.toString());
                                    Get.find<LocationController>().updateWardNo(
                                        wardNames.indexOf(
                                                suggestion.toString()) +
                                            1);

                                    // print(wardNames
                                    //         .indexOf(suggestion.toString()) +
                                    //     1);
                                    // print(
                                    //     Get.find<LocationController>().wardNo);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Get.find<LocationController>().getLocation();
                        },
                        icon: const Icon(Icons.location_on,
                            color: Colors.red, size: 40))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 200,
                    viewportFraction: 0.9,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 5),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      if (mounted)
                        setState(() {
                          _currentIndex = index;
                        });
                    },
                  ),
                  items: imageList.map((imageUrl) {
                    return Builder(
                      builder: (BuildContext context) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.network(
                              imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              DotsIndicator(
                dotsCount: imageList.length,
                position: _currentIndex.toInt(),
                decorator: DotsDecorator(
                  activeColor: AppColor
                      .whatsAppTealGreen, // You can customize the color of active dot
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                child: Marquee(
                  text: notificationText,
                  style: const TextStyle(
                      fontSize: 16.0, fontWeight: FontWeight.bold),
                  scrollAxis: Axis.horizontal,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  blankSpace: 20.0,
                  velocity:
                      100.0, // Adjust the velocity to control the scroll speed
                  pauseAfterRound: const Duration(seconds: 1),
                  startPadding: 0.0,
                  accelerationDuration: const Duration(seconds: 1),
                  accelerationCurve: Curves.linear,
                  decelerationDuration: const Duration(milliseconds: 500),
                  decelerationCurve: Curves.easeOut,
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(MainMapScreen());
                },
                child: GetBuilder<LocationController>(builder: ((controller) {
                  return Card(
                    child: ListTile(
                      leading: const Icon(
                        Icons.location_on,
                        color: AppColor.whatsAppTealGreen,
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
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: AppColor.whatsAppTealGreen,
                      ),
                    ),
                  );
                })),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    ' Quick Links',
                    style: const TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 250,
                child: GridView(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, childAspectRatio: 1.0),
                    children: [
                      SizedBox(
                        width: 100,
                        child: Column(
                          children: [
                            InkWell(
                              borderRadius: BorderRadius.circular(30),
                              onTap: () {
                                Get.to(() => WardInfoScreen());
                              },
                              child: CircleAvatar(
                                  backgroundColor: AppColor.winterGreen,
                                  radius: 30,
                                  child: Image.asset(
                                    'assets/icons/ward.png',
                                    width: 40,
                                    height: 40,
                                  )),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Ward Info')
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: Column(
                          children: [
                            InkWell(
                              borderRadius: BorderRadius.circular(30),
                              onTap: () {
                                Get.to(() => ComplaintScreen());
                              },
                              child: CircleAvatar(
                                  backgroundColor: AppColor.winterGreen,
                                  radius: 30,
                                  child: Image.asset(
                                    'assets/icons/complaint.png',
                                    width: 50,
                                    height: 50,
                                  )),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Raise Complaint')
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: Column(
                          children: [
                            InkWell(
                              borderRadius: BorderRadius.circular(30),
                              onTap: () {
                                // Get.to(() => ComplaintScreen());
                              },
                              child: CircleAvatar(
                                  backgroundColor: AppColor.winterGreen,
                                  radius: 30,
                                  child: Image.asset(
                                    'assets/icons/blood.png',
                                    width: 40,
                                    height: 40,
                                  )),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Blood Bank')
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Column(
                          children: [
                            InkWell(
                              borderRadius: BorderRadius.circular(30),
                              onTap: () {
                                Get.to(() => ZoneInfoScreen());
                              },
                              child: CircleAvatar(
                                  backgroundColor: AppColor.winterGreen,
                                  radius: 30,
                                  child: Image.asset(
                                    'assets/icons/zone.png',
                                    width: 40,
                                    height: 40,
                                  )),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Zone Info')
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: Column(
                          children: [
                            InkWell(
                              borderRadius: BorderRadius.circular(30),
                              onTap: () {
                                // Get.to(() => ComplaintScreen());
                              },
                              child: CircleAvatar(
                                  backgroundColor: AppColor.winterGreen,
                                  radius: 30,
                                  child: Image.asset(
                                    'assets/icons/about.png',
                                    color: AppColor.isabelline,
                                    width: 30,
                                    height: 30,
                                  )),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('About Madurai')
                          ],
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

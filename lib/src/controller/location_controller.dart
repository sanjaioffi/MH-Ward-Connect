import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:madurai_ward_connect/src/constants/globals.dart';

import '../presentation/screens/map/find_ward.dart';
import '../presentation/screens/map/polygon_list.dart';

class LocationController extends GetxController {
  RxBool isLoading = false.obs;
  RxString locationData = ''.obs;
  RxList coordinates = [].obs;
  RxInt wardNo = 1.obs;
  RxInt zoneNo = 2.obs;

  void updateLocation(String location) {
    locationData.value = location;
    update();
  }

  void updateCoordinates(List location) {
    coordinates.value = location;
    int wardNo =
        findPolygonForUser(LatLng(location[0], location[1]), polygon_list_list);
    updateWardNo(wardNo + 2);
    update();
  }

  void updateZone() {
    List zone1 = [
      3,
      4,
      5,
      6,
      7,
      8,
      9,
      10,
      11,
      12,
      13,
      14,
      16,
      17,
      18,
      19,
      36,
      37,
      38,
      39,
      40
    ];
    List zone2 = [
      1,
      2,
      15,
      20,
      21,
      22,
      23,
      24,
      25,
      26,
      27,
      28,
      31,
      32,
      33,
      34,
      35,
      63,
      64,
      65,
      66
    ];
    List zone3 = [
      50,
      51,
      52,
      54,
      55,
      56,
      57,
      58,
      59,
      60,
      61,
      62,
      67,
      68,
      69,
      70,
      75,
      76,
      77
    ];
    List zone4 = [
      29,
      30,
      41,
      42,
      43,
      44,
      45,
      46,
      47,
      48,
      49,
      53,
      85,
      86,
      87,
      88,
      89,
      90
    ];
    List zone5 = [
      71,
      72,
      73,
      74,
      78,
      79,
      80,
      81,
      82,
      83,
      84,
      91,
      92,
      93,
      94,
      95,
      96,
      97,
      98,
      99,
      100
    ];

    if (zone1.contains(wardNo.value)) {
      zoneNo.value = 1;
    } else if (zone2.contains(wardNo.value)) {
      zoneNo.value = 2;
    } else if (zone3.contains(wardNo.value)) {
      zoneNo.value = 3;
    } else if (zone4.contains(wardNo.value)) {
      zoneNo.value = 4;
    } else if (zone5.contains(wardNo.value)) {
      zoneNo.value = 5;
    }

    update();
  }

  void updateWardNo(int ward) {
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
    wardNo.value = ward;
    updateLocation(wardNames[ward - 1]);
    // print(wardNo.value);
    updateZone();
    update();
  }

  void getLocation() async {
    try {
      isLoading.value = true;
      Location location = Location();

      bool serviceEnabled = await location.serviceEnabled();

      if (!serviceEnabled) {
        serviceEnabled = await location.requestService();
        if (!serviceEnabled) {
          isLoading.value = false;
          return;
        }
      }

      PermissionStatus permissionGranted = await location.hasPermission();
      if (permissionGranted == PermissionStatus.denied) {
        permissionGranted = await location.requestPermission();
        if (permissionGranted != PermissionStatus.granted) {
          isLoading.value = false;
          return;
        }
      }

      LocationData currentLocation = await location.getLocation();
      locationData.value =
          '${currentLocation.latitude} <-> ${currentLocation.longitude}';

      updateCoordinates([currentLocation.latitude, currentLocation.longitude]);

    myLocation =
          LatLng(currentLocation.latitude!, currentLocation.longitude!);

      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      // Handle any errors that may occur during location fetching
    }
    update();
  }
}

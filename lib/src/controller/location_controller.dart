import 'package:get/get.dart';
import 'package:location/location.dart';

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
    wardNo.value = ward;
    // print(wardNo.value);
    updateZone();
    update();
  }

  void getLocation() async {
    print('getting_location');
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
      
      coordinates.value = [
        currentLocation.latitude,
        currentLocation.longitude
      ];

      print(currentLocation);
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      // Handle any errors that may occur during location fetching
    }
    update();
  }
}

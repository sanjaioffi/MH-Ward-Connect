import 'package:get/get.dart';
import 'package:location/location.dart';

class LocationController extends GetxController {
  RxBool isLoading = false.obs;
  RxString locationData = ''.obs;

  void updateLocation(String location) {
    locationData.value = location;
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

      print(currentLocation);
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      // Handle any errors that may occur during location fetching
    }
  }
}

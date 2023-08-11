import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../controller/user_controller.dart';

class IssueController extends GetxController {
  RxString submitButton = "Post Issue".obs;
  RxInt complaintType = 0.obs;
  var locationCoordinates = const LatLng(1, 2).obs;
  RxString mapMarker = "Value".obs;
  final List<String> issueTypes = [
    'Sewage Leaks',
    'Drainage Issues',
    'Debri Cluster',
    'Damaged Roads',
    'Street Light Issue',
    'Water Wastage',
    'Others',
  ].obs;

  void updateComplaintType(int index) {
    complaintType.value = index;
  }

  Future<bool> updateToFirebase() async {
    try {
      // Reference to the Firestore collection
      CollectionReference collection =
          FirebaseFirestore.instance.collection('issues');

      // Data you want to add to the document
      Map<String, dynamic> data = {
        'complaint_type': complaintType.value,
        'post_username': Get.find<AuthController>().userName,
        'latitude': locationCoordinates.value.latitude,
        'longitude': locationCoordinates.value.longitude,
        'status': 0,
      };

      // Add a new document with a generated ID
      await collection.add(data);
      complaintType.value = 0;
      locationCoordinates.value = const LatLng(1, 2);
      return true;
    } catch (e) {
      return false;
    }
  }

  void updateLocationCordinates(double lat, lng) {
    locationCoordinates.value = LatLng(lat, lng);
  }
}

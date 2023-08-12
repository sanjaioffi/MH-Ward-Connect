import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:madurai_ward_connect/src/controller/location_controller.dart';

import '../../../../controller/user_controller.dart';

class IssueController extends GetxController {
  RxString submitButton = "Post Issue".obs;
  String user_name = Get.find<AuthController>().userName!;
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

      CollectionReference userCollection =
          FirebaseFirestore.instance.collection('users');

      // Data you want to add to the document
      Map<String, dynamic> data = {
        'complaint_type': complaintType.value,
        'post_username': 'Sanjai Prabhakaran',
        'latitude': Get.find<LocationController>().coordinates[0],
        'longitude': Get.find<LocationController>().coordinates[1],
        'status': 0,
        'wardNo': 96,
      };

      // Add a new document with a generated ID
      await collection.add(data).then((value) async{
        await userCollection.doc(Get.find<AuthController>().uid).update({
        'complaints': FieldValue.arrayUnion([value.id])
      });
      });
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

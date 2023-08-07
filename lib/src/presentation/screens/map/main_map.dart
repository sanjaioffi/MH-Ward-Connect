import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:madurai_ward_connect/src/presentation/themes/app_colors.dart';

class MainMapScreen extends StatefulWidget {
  const MainMapScreen({super.key});

  @override
  State<MainMapScreen> createState() => _MainMapScreenState();
}

class _MainMapScreenState extends State<MainMapScreen> {
  List<LatLng> ward1 = [
    LatLng(9.923200850482402, 78.09409484208925),
    LatLng(9.897736765728439, 78.09400135871937),
    LatLng(9.882692941520446, 78.11779160798972),
    LatLng(9.888077126152226, 78.14013515291134),
    LatLng(9.906525207325387, 78.15661150797973),
    LatLng(9.934155799829796, 78.13386610073877),
    LatLng(9.934039680274708, 78.09809616121692),
    LatLng(9.923200850482402, 78.09409484208925),
  ];
  List<LatLng> ward2 = [
    LatLng(9.933529503806852, 78.067547276781),
    LatLng(9.915156704561568, 78.07835690230058),
    LatLng(9.893442068699429, 78.06659348629313),
    LatLng(9.897618071784379, 78.09393548025457),
    LatLng(9.923194931065225, 78.09414743369615),
    LatLng(9.927892504577699, 78.09594903794851),
    LatLng(9.929980293391452, 78.09605501467018),
    LatLng(9.933529503806852, 78.067547276781),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(), icon: Icon(Icons.arrow_back_ios)),
        title: const Text('Ward Map',
            style: TextStyle(
                color: AppColor.white,
                fontSize: 25,
                fontWeight: FontWeight.bold)),
        backgroundColor: AppColor.whatsAppTealGreen,
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
            target: LatLng(
              9.923215241301918,
              78.12260948762633,
            ),
            zoom: 13),
        markers: {
          Marker(
            markerId: MarkerId('Demo'),
            position: LatLng(
              9.923215241301918,
              78.12260948762633,
            ),
            draggable: true,
            onDrag: (value) => print(value),
          ),
        },
        polygons: {
         
          Polygon(
              polygonId: PolygonId('ward 1'),
              points: ward1,
              strokeWidth: 3,
              fillColor: Colors.transparent),
          Polygon(
              polygonId: PolygonId('ward 2'),
              points: ward2,
              strokeWidth: 3,
              fillColor: Colors.transparent)
        },
      ),
    );
  }
}

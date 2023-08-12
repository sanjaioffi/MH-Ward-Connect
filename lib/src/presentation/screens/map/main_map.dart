import 'dart:math';
import 'package:custom_map_markers/custom_map_markers.dart';
import 'package:custom_marker/marker_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:madurai_ward_connect/src/controller/location_controller.dart';
import 'package:madurai_ward_connect/src/presentation/screens/map/find_ward.dart';
import 'package:madurai_ward_connect/src/presentation/screens/map/polygon_list.dart';
import 'package:madurai_ward_connect/src/presentation/themes/app_colors.dart';

class MainMapScreen extends StatefulWidget {
  const MainMapScreen({super.key});

  @override
  State<MainMapScreen> createState() => _MainMapScreenState();
}

class _MainMapScreenState extends State<MainMapScreen> {
  Set<Marker> _markers = <Marker>{};

  Future<Marker> addMarker(List<LatLng> ward) async {
    return Marker(
      position: _getPolygonCenter(ward),
      icon: await MarkerIcon.downloadResizePictureCircle(
          'https://thegpscoordinates.net/photos/la/tehran_iran_5u679ezi8f.jpg',
          size: 150,
          addBorder: true,
          borderColor: Colors.white,
          borderSize: 15),
      markerId: MarkerId(''),
    );
  }

  late List<MarkerData> _customMarkers;

  @override
  void initState() {
    super.initState();
    _customMarkers = [
      MarkerData(
          marker: Marker(
              infoWindow: InfoWindow(title: wardNames[1 - 1]),
              markerId: const MarkerId('id-1'),
              position: _getPolygonCenter(ward1)),
          child: _customMarker3('1', Colors.blue)),
      MarkerData(
          marker: Marker(
              onDragEnd: (_) {
                Get.find<LocationController>()
                    .updateCoordinates([_.latitude, _.longitude]);
              },
              draggable: true,
              markerId: const MarkerId('Main'),
              position: LatLng(Get.find<LocationController>().coordinates[0],
                  Get.find<LocationController>().coordinates[1])),
          child: _customMarker('Main Marker', Colors.blue)),
      MarkerData(
          marker: Marker(
              infoWindow: InfoWindow(title: wardNames[3 - 1]),
              markerId: const MarkerId('id-1'),
              position: _getPolygonCenter(ward3)),
          child: _customMarker3('3', Colors.blue)),
      MarkerData(
          marker: Marker(
              infoWindow: InfoWindow(title: wardNames[4 - 1]),
              markerId: const MarkerId('id-1'),
              position: _getPolygonCenter(ward4)),
          child: _customMarker3('4', Colors.blue)),
      MarkerData(
          marker: Marker(
              infoWindow: InfoWindow(title: wardNames[5 - 1]),
              markerId: const MarkerId('id-1'),
              position: _getPolygonCenter(ward5)),
          child: _customMarker3('5', Colors.blue)),
      MarkerData(
          marker: Marker(
              infoWindow: InfoWindow(title: wardNames[6 - 1]),
              markerId: const MarkerId('id-1'),
              position: _getPolygonCenter(ward6)),
          child: _customMarker3('6', Colors.blue)),
      MarkerData(
          marker: Marker(
              infoWindow: InfoWindow(title: wardNames[7 - 1]),
              markerId: const MarkerId('id-1'),
              position: _getPolygonCenter(ward7)),
          child: _customMarker3('7', Colors.blue)),
      MarkerData(
          marker: Marker(
              infoWindow: InfoWindow(title: wardNames[8 - 1]),
              markerId: const MarkerId('id-1'),
              position: _getPolygonCenter(ward8)),
          child: _customMarker3('8', Colors.blue)),
      MarkerData(
          marker: Marker(
              infoWindow: InfoWindow(title: wardNames[9 - 1]),
              markerId: const MarkerId('id-1'),
              position: _getPolygonCenter(ward9)),
          child: _customMarker3('9', Colors.blue)),
      MarkerData(
          marker: Marker(
              infoWindow: InfoWindow(title: wardNames[10 - 1]),
              markerId: const MarkerId('id-1'),
              position: _getPolygonCenter(ward10)),
          child: _customMarker3('10', Colors.blue)),
      MarkerData(
          marker: Marker(
              infoWindow: InfoWindow(title: wardNames[11 - 1]),
              markerId: const MarkerId('id-1'),
              position: _getPolygonCenter(ward11)),
          child: _customMarker3('11', Colors.blue)),
      MarkerData(
          marker: Marker(
              infoWindow: InfoWindow(title: wardNames[12 - 1]),
              markerId: const MarkerId('id-1'),
              position: _getPolygonCenter(ward12)),
          child: _customMarker3('12', Colors.blue)),
      MarkerData(
          marker: Marker(
              markerId: const MarkerId('id-5'),
              infoWindow: InfoWindow(title: wardNames[13 - 1]),
              position: _getPolygonCenter(ward13)),
          child: _customMarker3('13', Colors.black)),
      MarkerData(
          marker: Marker(
              infoWindow: InfoWindow(title: wardNames[14 - 1]),
              markerId: const MarkerId('id-2'),
              position: _getPolygonCenter(ward14)),
          child: _customMarker3('14', Colors.red)),
      MarkerData(
          marker: Marker(
              infoWindow: InfoWindow(title: wardNames[16 - 1]),
              markerId: const MarkerId('id-3'),
              position: _getPolygonCenter(ward16)),
          child: _customMarker3('16', Colors.green)),
      MarkerData(
          marker: Marker(
              infoWindow: InfoWindow(title: wardNames[17 - 1]),
              markerId: const MarkerId('id-4'),
              position: _getPolygonCenter(ward17)),
          child: _customMarker3('17', Colors.purple)),
      MarkerData(
          marker: Marker(
              infoWindow: InfoWindow(title: wardNames[18 - 1]),
              markerId: const MarkerId('id-5'),
              position: _getPolygonCenter(ward18)),
          child: _customMarker3('18', Colors.blue)),
      MarkerData(
          marker: Marker(
              infoWindow: InfoWindow(title: wardNames[96 - 1]),
              markerId: const MarkerId('id-5'),
              position: _getPolygonCenter(ward97)),
          child: _customMarker3('96', Colors.blue)),
    ];
  }

  _customMarker(String symbol, Color color) {
    return Stack(
      children: [
        Icon(
          Icons.add_location,
          color: color,
          size: 50,
        ),
        Positioned(
          left: 15,
          top: 8,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Center(child: Text(symbol)),
          ),
        )
      ],
    );
  }

  _customMarker3(String text, Color color) {
    return Container(
      width: 30,
      height: 30,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(color: color, width: 2),
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(color: color, blurRadius: 6)]),
      child: Center(child: Text(text)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                // Get the user's current location
                LatLng userLocation = LatLng(
                    Get.find<LocationController>().coordinates[0],
                    Get.find<LocationController>().coordinates[
                        1]); // Replace with the user's actual latitude and longitude

                // Find the polygon the user is in
                int result =
                    findPolygonForUser(userLocation, polygon_list_list);

                if (result != -1) {
                  print("The user is inside Polygon ${result + 1}");
                } else {
                  print("The user is not inside any polygon.");
                }
              },
              icon: const Icon(Icons.add))
        ],
        // leading: IconButton(
        //     onPressed: () => Get.back(), icon: Icon(Icons.arrow_back_ios)),
        title: const Text('Ward Map',
            style: TextStyle(
                color: AppColor.white,
                fontSize: 25,
                fontWeight: FontWeight.bold)),
        backgroundColor: AppColor.whatsAppTealGreen,
      ),
      body: CustomGoogleMapMarkerBuilder(
        //screenshotDelay: const Duration(seconds: 4),
        customMarkers: _customMarkers,
        builder: (BuildContext context, Set<Marker>? markers) {
          if (markers == null) {
            return const Center(child: CircularProgressIndicator());
          }
          return GoogleMap(
            initialCameraPosition: CameraPosition(
                target: LatLng(
                  Get.find<LocationController>().coordinates[0],
                  Get.find<LocationController>().coordinates[1],
                ),
                zoom: 15),
            markers: markers,
            polygons: {
              Polygon(
                  polygonId: PolygonId('ward 1'),
                  points: ward1,
                  strokeWidth: 2,
                  fillColor: getRandomColor().withOpacity(0.5)),
              Polygon(
                  polygonId: PolygonId('ward 3'),
                  points: ward3,
                  strokeWidth: 2,
                  fillColor: getRandomColor().withOpacity(0.5)),
              Polygon(
                  polygonId: PolygonId('ward 4'),
                  points: ward4,
                  strokeWidth: 2,
                  fillColor: getRandomColor().withOpacity(0.5)),
              Polygon(
                  polygonId: PolygonId('ward 5'),
                  points: ward5,
                  strokeWidth: 2,
                  fillColor: getRandomColor().withOpacity(0.5)),
              Polygon(
                  polygonId: PolygonId('ward 6'),
                  points: ward6,
                  strokeWidth: 2,
                  fillColor: getRandomColor().withOpacity(0.5)),
              Polygon(
                  polygonId: PolygonId('ward 7'),
                  points: ward7,
                  strokeWidth: 2,
                  fillColor: getRandomColor().withOpacity(0.5)),
              Polygon(
                  polygonId: PolygonId('ward 8'),
                  points: ward8,
                  strokeWidth: 2,
                  fillColor: getRandomColor().withOpacity(0.5)),
              Polygon(
                  polygonId: PolygonId('ward 9'),
                  points: ward9,
                  strokeWidth: 2,
                  fillColor: getRandomColor().withOpacity(0.5)),
              Polygon(
                  polygonId: PolygonId('ward 10'),
                  points: ward10,
                  strokeWidth: 2,
                  fillColor: getRandomColor().withOpacity(0.5)),
              Polygon(
                  polygonId: PolygonId('ward 11'),
                  points: ward11,
                  strokeWidth: 2,
                  fillColor: getRandomColor().withOpacity(0.5)),
              Polygon(
                  polygonId: PolygonId('ward 12'),
                  points: ward12,
                  strokeWidth: 2,
                  fillColor: getRandomColor().withOpacity(0.5)),
              Polygon(
                  polygonId: PolygonId('ward 13'),
                  points: ward13,
                  strokeWidth: 2,
                  fillColor: getRandomColor().withOpacity(0.5)),
              Polygon(
                  polygonId: PolygonId('ward 14'),
                  points: ward14,
                  strokeWidth: 2,
                  fillColor: getRandomColor().withOpacity(0.5)),
              // Polygon(
              //     polygonId: PolygonId('ward 15'),
              //     points: ward15,
              //     strokeWidth: 2,
              //     fillColor: getRandomColor().withOpacity(0.5)),
              Polygon(
                  polygonId: PolygonId('ward 16'),
                  points: ward16,
                  strokeWidth: 2,
                  fillColor: getRandomColor().withOpacity(0.5)),
              Polygon(
                  polygonId: PolygonId('ward 17'),
                  points: ward17,
                  strokeWidth: 2,
                  fillColor: getRandomColor().withOpacity(0.5)),
              Polygon(
                  polygonId: PolygonId('ward 18'),
                  points: ward18,
                  strokeWidth: 2,
                  fillColor: getRandomColor().withOpacity(0.5)),
              Polygon(
                  polygonId: PolygonId('ward 19'),
                  points: ward19,
                  strokeWidth: 2,
                  fillColor: getRandomColor().withOpacity(0.5)),
              Polygon(
                  polygonId: PolygonId('ward 36'),
                  points: ward36,
                  strokeWidth: 2,
                  fillColor: getRandomColor().withOpacity(0.5)),
              Polygon(
                  polygonId: PolygonId('ward 37'),
                  points: ward37,
                  strokeWidth: 2,
                  fillColor: getRandomColor().withOpacity(0.5)),
              Polygon(
                  polygonId: PolygonId('ward 38'),
                  points: ward38,
                  strokeWidth: 2,
                  fillColor: getRandomColor().withOpacity(0.5)),

              Polygon(
                  polygonId: PolygonId('57'),
                  points: ward57,
                  strokeWidth: 2,
                  fillColor: getRandomColor().withOpacity(0.5)),
              Polygon(
                  polygonId: PolygonId('97'),
                  points: ward97,
                  strokeWidth: 2,
                  fillColor: getRandomColor().withOpacity(0.5))
            },
          );
        },
      ),
    );
  }

  LatLng _getPolygonCenter(List<LatLng> points) {
    double area = 0;
    double cx = 0;
    double cy = 0;

    for (int i = 0; i < points.length; i++) {
      int j = (i + 1) % points.length;
      double xi = points[i].latitude;
      double yi = points[i].longitude;
      double xj = points[j].latitude;
      double yj = points[j].longitude;
      double factor = (xi * yj - xj * yi);
      area += factor;
      cx += (xi + xj) * factor;
      cy += (yi + yj) * factor;
    }

    area /= 2;
    cx /= (6 * area);
    cy /= (6 * area);

    return LatLng(cx, cy);
  }

  Color getRandomColor() {
    final Random random = Random();
    final int red = random.nextInt(256);
    final int green = random.nextInt(256);
    final int blue = random.nextInt(256);
    return Color.fromARGB(255, red, green, blue);
  }
}

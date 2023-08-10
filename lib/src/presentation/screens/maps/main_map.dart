import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class MainMapScreen extends StatefulWidget {
  const MainMapScreen({super.key});

  @override
  State<MainMapScreen> createState() => _MainMapScreenState();
}

class _MainMapScreenState extends State<MainMapScreen> {
  List<LatLng> ward1 = [
    const LatLng(9.923200850482402, 78.09409484208925),
    const LatLng(9.897736765728439, 78.09400135871937),
    const LatLng(9.882692941520446, 78.11779160798972),
    const LatLng(9.888077126152226, 78.14013515291134),
    const LatLng(9.906525207325387, 78.15661150797973),
    const LatLng(9.934155799829796, 78.13386610073877),
    const LatLng(9.934039680274708, 78.09809616121692),
    const LatLng(9.923200850482402, 78.09409484208925),
  ];
  List<LatLng> ward2 = [
    const LatLng(9.933529503806852, 78.067547276781),
    const LatLng(9.915156704561568, 78.07835690230058),
    const LatLng(9.893442068699429, 78.06659348629313),
    const LatLng(9.897618071784379, 78.09393548025457),
    const LatLng(9.923194931065225, 78.09414743369615),
    const LatLng(9.927892504577699, 78.09594903794851),
    const LatLng(9.929980293391452, 78.09605501467018),
    const LatLng(9.933529503806852, 78.067547276781),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(
            9.923215241301918,
            78.12260948762633,
          ),
          zoom: 15,
        ),
        markers: {
          Marker(
            markerId: const MarkerId('Demo'),
            position: const LatLng(
              10.367312,
              77.980293,
            ),
            draggable: true,
            onDrag: (value) => print(value),
          ),
        },
        polygons: {
          Polygon(
              polygonId: const PolygonId('ward 1'),
              points: ward1,
              strokeWidth: 3,
              fillColor: Colors.transparent),
          Polygon(
              polygonId: const PolygonId('ward 2'),
              points: ward2,
              strokeWidth: 3,
              fillColor: Colors.transparent)
        },
      ),
    );
  }
}

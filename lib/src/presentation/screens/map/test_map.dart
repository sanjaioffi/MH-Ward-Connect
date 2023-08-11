import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image/image.dart' as img;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MapScreen(),
    );
  }
}

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? _controller;

  final List<MapPolygon> _mapPolygons = [
    MapPolygon(
      polygonId: 'polygon1',
      points: _createPolygon1Points(),
      label: 'Polygon 1',
      number: 1,
      strokeColor: Colors.blue,
      strokeWidth: 3,
      fillColor: Colors.blue.withOpacity(0.2),
    ),
    MapPolygon(
      polygonId: 'polygon2',
      points: _createPolygon2Points(),
      label: 'Polygon 2',
      number: 2,
      strokeColor: Colors.red,
      strokeWidth: 3,
      fillColor: Colors.red.withOpacity(0.2),
    ),
  ];

  static List<LatLng> _createPolygon1Points() {
    return [
      LatLng(37.773972, -122.431297),
      LatLng(37.774595, -122.430659),
      LatLng(37.774576, -122.431179),
    ];
  }

  static List<LatLng> _createPolygon2Points() {
    return [
      LatLng(37.771999, -122.433012),
      LatLng(37.772921, -122.432491),
      LatLng(37.773035, -122.433763),
    ];
  }

  Set<Marker> _markers = Set<Marker>();

  @override
  void initState() {
    super.initState();
    _loadMarkerIcons();
  }

  Future<void> _loadMarkerIcons() async {
    final List<MapPolygon> polygons = _mapPolygons;
    for (final MapPolygon polygon in polygons) {
      final BitmapDescriptor markerIcon = await _createMarkerIcon(polygon.number);
      final Marker marker = Marker(
        markerId: MarkerId(polygon.polygonId),
        position: _getPolygonCenter(polygon.points),
        icon: markerIcon,
      );
      _markers.add(marker);
    }
    setState(() {});
  }

  LatLng _getPolygonCenter(List<LatLng> points) {
    double lat = 0;
    double lng = 0;
    for (final point in points) {
      lat += point.latitude;
      lng += point.longitude;
    }
    final centerLat = lat / points.length;
    final centerLng = lng / points.length;
    return LatLng(centerLat, centerLng);
  }

  Future<BitmapDescriptor> _createMarkerIcon(int number) async {
    final ByteData byteData = await rootBundle.load('assets/marker_icon.png'); // Update the image path
    final Uint8List uint8List = byteData.buffer.asUint8List();

    final img.Image image = img.decodeImage(uint8List)!; // Decode the image
    final img.Image resizedImage = img.copyResize(image, width: 48, height: 48); // Resize the image
    final Uint8List resizedUint8List = img.encodePng(resizedImage); // Encode the resized image

    return BitmapDescriptor.fromBytes(resizedUint8List);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Map with Custom Markers'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(37.7749, -122.4194),
          zoom: 15,
        ),
        markers: _markers,
        polygons: _mapPolygons.map((polygon) => polygon.toPolygon()).toSet(),
        onMapCreated: (GoogleMapController controller) {
          _controller = controller;
        },
      ),
    );
  }
}

class MapPolygon {
  final String polygonId;
  final List<LatLng> points;
  final String label;
  final int number;
  final Color strokeColor;
  final double strokeWidth;
  final Color fillColor;

  MapPolygon({
    required this.polygonId,
    required this.points,
    required this.label,
    required this.number,
    required this.strokeColor,
    required this.strokeWidth,
    required this.fillColor,
  });

  Polygon toPolygon() {
    return Polygon(
      polygonId: PolygonId(polygonId),
      points: points,
      strokeColor: strokeColor,
      strokeWidth: strokeWidth.toInt(),
      fillColor: fillColor,
    );
  }
}

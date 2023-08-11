import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:madurai_ward_connect/src/constants/globals.dart';
import 'package:madurai_ward_connect/src/presentation/screens/issue/controller/issue_controller.dart';

class IssueMap extends StatelessWidget {
  const IssueMap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetX<IssueController>(
      builder: (controller) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
          ),
          child: SizedBox(
            height: 250,
            child: GoogleMap(
              zoomControlsEnabled: false,
              initialCameraPosition: CameraPosition(
                target: myLocation,
                zoom: 20.0,
              ),
              markers: {
                Marker(
                  draggable: true,
                  position: myLocation,
                  markerId: MarkerId(
                    controller.mapMarker.value,
                  ),
                  onDragEnd: (value) {
                    controller.updateLocationCordinates(
                      value.latitude,
                      value.longitude,
                    );
                  },
                ),
              },
            ),
          ),
        );
      },
    );
  }
}

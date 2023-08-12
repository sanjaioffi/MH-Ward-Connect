import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:madurai_ward_connect/src/presentation/screens/map/polygon_list.dart';

bool isPointInsidePolygon(List<LatLng> polygon, LatLng point) {
  double lat = point.latitude;
  double lon = point.longitude;
  int numVertices = polygon.length;
  bool isInside = false;

  for (int i = 0; i < numVertices; i++) {
    LatLng vertex1 = polygon[i];
    LatLng vertex2 = polygon[(i + 1) % numVertices];

    if ((vertex1.latitude < lat && lat <= vertex2.latitude) || (vertex2.latitude < lat && lat <= vertex1.latitude)) {
      double lonIntersect = (vertex1.longitude + (lat - vertex1.latitude) * (vertex2.longitude - vertex1.longitude) / (vertex2.longitude - vertex1.latitude));

      if (lon <= lonIntersect) {
        isInside = !isInside;
      }
    }
  }

  return isInside;
}

int findPolygonForUser(LatLng userLocation, List<List<LatLng>> polygons) {
  for (int i = 0; i < polygons.length; i++) {
    if (isPointInsidePolygon(polygons[i], userLocation)) {
      return i;
    }
  }
  return 0;
}

// void main() {


//   // Get the user's current location
//   LatLng userLocation = LatLng(9.96687350248746, 78.18241126440898); // Replace with the user's actual latitude and longitude

//   // Find the polygon the user is in
//   int result = findPolygonForUser(userLocation,polygon_list_list);

//   if (result != -1) {
//     print("The user is inside Polygon ${result + 1}.");
//   } else {
//     print("The user is not inside any polygon.");
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:madurai_ward_connect/src/controller/location_controller.dart';
import 'package:madurai_ward_connect/src/presentation/themes/app_colors.dart';

class MainMapScreen extends StatefulWidget {
  const MainMapScreen({super.key});

  @override
  State<MainMapScreen> createState() => _MainMapScreenState();
}

class _MainMapScreenState extends State<MainMapScreen> {
  List<LatLng> ward1 = [
    LatLng(9.963998223066397, 78.15515422186888),
    LatLng(9.960212053173095, 78.15361656978956),
    LatLng(9.961423632319821, 78.15223268291618),
    LatLng(9.958394676017647, 78.15192515250033),
    LatLng(9.95642583934341, 78.14838855271375),
    LatLng(9.959303365860123, 78.14469818771937),
    LatLng(9.96414966894784, 78.1411615879349),
    LatLng(9.96414966894784, 78.15515422186888),
  ];
  List<LatLng> ward3 = [
    LatLng(9.96203828817363, 78.0979895772756),
    LatLng(9.97733405887459, 78.09768204685975),
    LatLng(9.978999891534826, 78.11075208954611),
    LatLng(9.97733405887459, 78.11951670640633),
    LatLng(9.963098414238416, 78.11859411515667),
    LatLng(9.961735394379772, 78.11351986329095),
    LatLng(9.956131808466438, 78.11351986329095),
    LatLng(9.957797749465172, 78.10906067225682),
    LatLng(9.961886841311866, 78.10890690704889),
    LatLng(9.96203828817363, 78.09737451644185),
  ];
  List<LatLng> ward4 = [
    LatLng(9.97566821769503, 78.11997800203011),
    LatLng(9.975971098542985, 78.12612861035342),
    LatLng(9.971579298683523, 78.12597484514549),
    LatLng(9.971427856253413, 78.13504699242162),
    LatLng(9.965975881901741, 78.1345856967958),
    LatLng(9.959160785774358, 78.13304804471642),
    LatLng(9.95855499256244, 78.13120286221925),
    LatLng(9.956283257999331, 78.13151039263511),
    LatLng(9.960826711309622, 78.1230533061908),
    LatLng(9.963249860537687, 78.1187478803646),
    LatLng(9.97566821769503, 78.11951670640633),
  ];
  List<LatLng> ward5 = [
    LatLng(9.958706440970843, 78.13304804471642),
    LatLng(9.956586156855352, 78.1322792186748),
    LatLng(9.955828909189862, 78.13335557513227),
    LatLng(9.95810064691456, 78.1345856967958),
    LatLng(9.9552231097924, 78.13889112262194),
    LatLng(9.960069473484396, 78.14089007032709),
    LatLng(9.961583947376312, 78.13873735741402),
    LatLng(9.963401306766684, 78.13858359220609),
    LatLng(9.96612732686475, 78.1345856967958),
    LatLng(9.95931223390157, 78.13304804471642),
  ];
  List<LatLng> ward6 = [
    LatLng(9.976122538861347, 78.12643614076933),
    LatLng(9.978242695927293, 78.1276662624328),
    LatLng(9.975062455153264, 78.13258674909264),
    LatLng(9.976879739398115, 78.13366310554818),
    LatLng(9.974305250392305, 78.13889112262194),
    LatLng(9.978394135189433, 78.13858359220609),
    LatLng(9.976425419286926, 78.14089007032709),
    LatLng(9.971124971181041, 78.13889112262194),
    LatLng(9.968096104983488, 78.13766100095847),
    LatLng(9.960372368824977, 78.1447342005294),
    LatLng(9.95931223390157, 78.14273525282425),
    LatLng(9.961583947376312, 78.13873735741402),
    LatLng(9.963249860537687, 78.13904488783186),
    LatLng(9.965975881901741, 78.13473946200577),
    LatLng(9.971276413751909, 78.13535452283747),
    LatLng(9.972185067700266, 78.12612861035342),
    LatLng(9.97566821769503, 78.12612861035342),
  ];

  List<LatLng> ward7 = [
    LatLng(9.978999891534826, 78.12782002764072),
    LatLng(9.984451647923677, 78.12951144492996),
    LatLng(9.986117444162616, 78.13366310554818),
    LatLng(9.992326245917823, 78.1345856967958),
    LatLng(9.994749160791883, 78.14196642678462),
    LatLng(9.993234841111601, 78.14596432219491),
    LatLng(9.977182619119517, 78.14073630511916),
    LatLng(9.978999891534826, 78.13827606179024),
    LatLng(9.974911014342055, 78.13827606179024),
    LatLng(9.977485498559247, 78.1335093403402),
    LatLng(9.975819658154208, 78.1322792186748),
    LatLng(9.978394135189433, 78.12797379284865),
    LatLng(9.979605646752319, 78.12812755805862),
  ];
  List<LatLng> ward8 = [
    LatLng(9.964604006170234, 78.14070029231112),
    LatLng(9.964755451771367, 78.15515422186888),
    LatLng(9.97611367127719, 78.16730167330763),
    LatLng(9.993074541633717, 78.14577454417696),
    LatLng(9.967935793128277, 78.13808628377222),
    LatLng(9.964604006170234, 78.1411615879349),
  ];
  List<LatLng> ward9 = [
    LatLng(9.97538811996236, 78.16791783718895),
    LatLng(9.968125666066143, 78.16817210784166),
    LatLng(9.972633415123596, 78.17605449808525),
    LatLng(9.96687350248746, 78.18241126440898),
    LatLng(9.962616110351192, 78.17986855787984),
    LatLng(9.965621334098984, 78.18927657203989),
    LatLng(9.963868290277915, 78.20402426991268),
    LatLng(9.948090472053181, 78.18571678289806),
    LatLng(9.9400760502337, 78.18622532420358),
    LatLng(9.941328316598032, 78.17224043829071),
    LatLng(9.94859136689054, 78.16969773175981),
    LatLng(9.949092260958949, 78.16206961217068),
    LatLng(9.963617854677324, 78.16206961217068),
    LatLng(9.96937782483532, 78.16028971759982),
    LatLng(9.974636839134277, 78.1666464839235),
    LatLng(9.974887266270073, 78.16740929588349),
    LatLng(9.972883843798456, 78.16766356653619),
  ];
  List<LatLng> ward10 = [
    LatLng(9.968874550280816, 78.1601572863537),
    LatLng(9.965016721871208, 78.16197586742015),
    LatLng(9.947380353917552, 78.15763925103153),
    LatLng(9.944349007242721, 78.15204361698096),
    LatLng(9.952340678710925, 78.14420972931055),
    LatLng(9.958540978735982, 78.1451889652684),
    LatLng(9.955923088646372, 78.1479867822946),
    LatLng(9.95771427887098, 78.15260318038548),
    LatLng(9.964327819138546, 78.15596056081614),
    LatLng(9.968461213706505, 78.1597376138003),
  ];
  List<LatLng> ward11 = [
    LatLng(9.963998223066397, 78.15515422186888),
    LatLng(9.960212053173095, 78.15361656978956),
    LatLng(9.961423632319821, 78.15223268291618),
    LatLng(9.958394676017647, 78.15192515250033),
    LatLng(9.95642583934341, 78.14838855271375),
    LatLng(9.959303365860123, 78.14469818771937),
    LatLng(9.96414966894784, 78.1411615879349),
    LatLng(9.96414966894784, 78.15515422186888),
  ];
  List<LatLng> ward12 = [
    LatLng(9.959303365860123, 78.1411615879349),
    LatLng(9.958849021255176, 78.14439065730357),
    LatLng(9.950670710207817, 78.14439065730357),
    LatLng(9.952185227710686, 78.13777875335637),
    LatLng(9.95430554041252, 78.1388551098139),
    LatLng(9.959000469527112, 78.14039276189322),
  ];
  List<LatLng> ward13 = [
    LatLng(9.951154947920756, 78.14224269620831),
    LatLng(9.950156693191985, 78.14224269620831),
    LatLng(9.948390542735908, 78.14068346407663),
    LatLng(9.94531895398238, 78.14411377476841),
    LatLng(9.94892806779913, 78.14746612385574),
    LatLng(9.951692468433336, 78.14473746762314),
    LatLng(9.950233482125554, 78.14465950601658),
    LatLng(9.950847792943861, 78.14247658103011),
  ];
  List<LatLng> ward14 = [
    LatLng(9.944013520018686, 78.15183197382856),
    LatLng(9.939252481378801, 78.14559504529558),
    LatLng(9.94132584543928, 78.14504931404946),
    LatLng(9.946701172495693, 78.1398258864021),
    LatLng(9.948083385160402, 78.14044957925688),
    LatLng(9.9450117935191, 78.1442696979816),
    LatLng(9.948544121415381, 78.14746612385574),
    LatLng(9.944320681420209, 78.15167605061544),
  ];
  List<LatLng> ward16 = [
    LatLng(9.95861108047012, 78.13259030828078),
    LatLng(9.942140458473872, 78.13033563496123),
    LatLng(9.945564195466332, 78.12592023304376),
    LatLng(9.947507381584686, 78.12169272057059),
    LatLng(9.946489523630149, 78.1202835497462),
    LatLng(9.947877510963309, 78.11971988141693),
    LatLng(9.950283341704036, 78.12272611250876),
    LatLng(9.949543087979634, 78.12620206720959),
    LatLng(9.956112781148164, 78.13108719273362),
    LatLng(9.958426021917035, 78.13136902689939),
    LatLng(9.958888668104137, 78.13249636355795),
  ];
  List<LatLng> ward17 = [
    LatLng(9.948340172098042, 78.1196259366954),
    LatLng(9.950838530897556, 78.12300794667345),
    LatLng(9.949913215051552, 78.12620206720959),
    LatLng(9.955927721177275, 78.13118113745514),
    LatLng(9.961294417698753, 78.12169272057059),
    LatLng(9.949080428548655, 78.1202835497462),
  ];
  List<LatLng> ward18 = [
    LatLng(9.96157200304863, 78.12150483112748),
    LatLng(9.948247639923764, 78.11971988141693),
    LatLng(9.942973262665348, 78.11173458007829),
    LatLng(9.943435930743007, 78.10994963036649),
    LatLng(9.95407711570877, 78.11699548448968),
    LatLng(9.956390370906007, 78.11370741923196),
    LatLng(9.96157200304863, 78.11380136395348),
    LatLng(9.962959926256104, 78.11878043420023),
    LatLng(9.961479474624909, 78.12131694168437),
  ];
  List<LatLng> ward19 = [
    LatLng(9.961548250153143, 78.1006494892452),
    LatLng(9.95795856901762, 78.10080134787995),
    LatLng(9.948685043358921, 78.1003457719757),
    LatLng(9.943599449752853, 78.10960914870361),
    LatLng(9.954368848396854, 78.11644278727351),
    LatLng(9.955714998255928, 78.11462048365644),
    LatLng(9.957808998113492, 78.10869799689505),
    LatLng(9.961548250153143, 78.10854613826035),
    LatLng(9.96184738846462, 78.1003457719757),
  ];
  // List<LatLng> ward20 = [
  //   LatLng(9.968874550280816, 78.1601572863537),
  //   LatLng(9.965016721871208, 78.16197586742015),
  //   LatLng(9.947380353917552, 78.15763925103153),
  //   LatLng(9.944349007242721, 78.15204361698096),
  //   LatLng(9.952340678710925, 78.14420972931055),
  //   LatLng(9.958540978735982, 78.1451889652684),
  //   LatLng(9.955923088646372, 78.1479867822946),
  //   LatLng(9.95771427887098, 78.15260318038548),
  //   LatLng(9.964327819138546, 78.15596056081614),
  //   LatLng(9.968461213706505, 78.1597376138003),
  // ];
  // List<LatLng> ward10 = [
  //   LatLng(9.968874550280816, 78.1601572863537),
  //   LatLng(9.965016721871208, 78.16197586742015),
  //   LatLng(9.947380353917552, 78.15763925103153),
  //   LatLng(9.944349007242721, 78.15204361698096),
  //   LatLng(9.952340678710925, 78.14420972931055),
  //   LatLng(9.958540978735982, 78.1451889652684),
  //   LatLng(9.955923088646372, 78.1479867822946),
  //   LatLng(9.95771427887098, 78.15260318038548),
  //   LatLng(9.964327819138546, 78.15596056081614),
  //   LatLng(9.968461213706505, 78.1597376138003),
  // ];

  List<LatLng> ward57 = [
    LatLng(9.938539227841474, 78.09820789038008),
    LatLng(9.931514407522556, 78.11522305354845),
    LatLng(9.918736591885008, 78.10915824291402),
    LatLng(9.93035280852665, 78.09596166421954),
    LatLng(9.938317975959265, 78.09815173472606),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //     onPressed: () => Get.back(), icon: Icon(Icons.arrow_back_ios)),
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
              Get.find<LocationController>().coordinates[0],
              Get.find<LocationController>().coordinates[1],
            ),
            zoom: 20),
        markers: {
          Marker(
            markerId: MarkerId('Main Marker'),
            position: LatLng(
              Get.find<LocationController>().coordinates[0],
              Get.find<LocationController>().coordinates[1],
            ),
            draggable: true,
            onDrag: (value) => print(value),
          ),
        },
        polygons: {
          Polygon(
              polygonId: PolygonId('ward 1'),
              points: ward1,
              strokeWidth: 2,
              fillColor: Colors.green.withOpacity(0.5)),
          Polygon(
              polygonId: PolygonId('ward 3'),
              points: ward3,
              strokeWidth: 2,
              fillColor: Colors.green.withOpacity(0.5)),
          Polygon(
              polygonId: PolygonId('ward 4'),
              points: ward4,
              strokeWidth: 2,
              fillColor: Colors.green.withOpacity(0.5)),
          Polygon(
              polygonId: PolygonId('ward 5'),
              points: ward5,
              strokeWidth: 2,
              fillColor: Colors.green.withOpacity(0.5)),
          Polygon(
              polygonId: PolygonId('ward 6'),
              points: ward6,
              strokeWidth: 2,
              fillColor: Colors.green.withOpacity(0.5)),
          Polygon(
              polygonId: PolygonId('ward 7'),
              points: ward7,
              strokeWidth: 2,
              fillColor: Colors.green.withOpacity(0.5)),
          Polygon(
              polygonId: PolygonId('ward 8'),
              points: ward8,
              strokeWidth: 2,
              fillColor: Colors.green.withOpacity(0.5)),
          Polygon(
              polygonId: PolygonId('ward 9'),
              points: ward9,
              strokeWidth: 2,
              fillColor: Colors.green.withOpacity(0.5)),
          Polygon(
              polygonId: PolygonId('ward 10'),
              points: ward10,
              strokeWidth: 2,
              fillColor: Colors.green.withOpacity(0.5)),
          Polygon(
              polygonId: PolygonId('ward 11'),
              points: ward11,
              strokeWidth: 2,
              fillColor: Colors.green.withOpacity(0.5)),
          Polygon(
              polygonId: PolygonId('ward 12'),
              points: ward12,
              strokeWidth: 2,
              fillColor: Colors.green.withOpacity(0.5)),
          Polygon(
              polygonId: PolygonId('ward 13'),
              points: ward13,
              strokeWidth: 2,
              fillColor: Colors.green.withOpacity(0.5)),
          Polygon(
              polygonId: PolygonId('ward 14'),
              points: ward14,
              strokeWidth: 2,
              fillColor: Colors.green.withOpacity(0.5)),
          // Polygon(
          //     polygonId: PolygonId('ward 15'),
          //     points: ward15,
          //     strokeWidth: 2,
          //     fillColor: Colors.green.withOpacity(0.5)),
          Polygon(
              polygonId: PolygonId('ward 16'),
              points: ward16,
              strokeWidth: 2,
              fillColor: Colors.green.withOpacity(0.5)),
          Polygon(
              polygonId: PolygonId('ward 17'),
              points: ward17,
              strokeWidth: 2,
              fillColor: Colors.green.withOpacity(0.5)),
          Polygon(
              polygonId: PolygonId('ward 18'),
              points: ward18,
              strokeWidth: 2,
              fillColor: Colors.green.withOpacity(0.5)),
          Polygon(
              polygonId: PolygonId('ward 19'),
              points: ward19,
              strokeWidth: 2,
              fillColor: Colors.green.withOpacity(0.5)),
          // Polygon(
          //     polygonId: PolygonId('ward 20'),
          //     points: ward20,
          //     strokeWidth: 2,
          //     fillColor: Colors.green.withOpacity(0.5)),

          Polygon(
              polygonId: PolygonId('57'),
              points: ward57,
              strokeWidth: 2,
              fillColor: Colors.green.withOpacity(0.5))
        },
      ),
    );
  }
}
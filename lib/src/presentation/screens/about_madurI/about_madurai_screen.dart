import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

import '../../themes/app_colors.dart';

class AboutMaduraiScreen extends StatelessWidget {
  const AboutMaduraiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recent Updates',
                  style: TextStyle(
                      color: AppColor.whatsAppTealGreen,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          ListTile(
            leading: ProfilePicture(
                name: 'Madurai Tech Community', radius: 20, fontsize: 12),
            trailing: Icon(Icons.arrow_forward_ios),
            title: Text('Madurai Tech Community Organizing Two Days Hackathon'),
            subtitle: Text(
                '3.4 Map based ward boundaries appProvide a map based mobile application that shows boundary lines of Madurai civic wards and electoral wards.'),
          ),
          ListTile(
            leading: ProfilePicture(
                name: 'Madurai Tech Community', radius: 20, fontsize: 12),
            trailing: Icon(Icons.arrow_forward_ios),
            title: Text('Madurai Tech Community Organizing Two Days Hackathon'),
            subtitle: Text(
                '3.4 Map based ward boundaries appProvide a map based mobile application that shows boundary lines of Madurai civic wards and electoral wards.'),
          )
        ],
      )),
    );
  }
}

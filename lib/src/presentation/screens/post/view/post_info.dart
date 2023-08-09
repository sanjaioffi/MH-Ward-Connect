import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:madurai_ward_connect/src/presentation/themes/app_colors.dart';

class PostUserInfo extends StatelessWidget {
  const PostUserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 20,
        left: 8.0,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: AppColor.whatsAppTealGreen,
            backgroundImage: CachedNetworkImageProvider(
              "https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              "கௌதம்",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

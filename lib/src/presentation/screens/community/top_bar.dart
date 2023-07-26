import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:madurai_ward_connect/src/presentation/themes/app_colors.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 3,
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: AppColor.whatsAppTealGreen,
              backgroundImage: CachedNetworkImageProvider(
                "https://images.pexels.com/photos/3881104/pexels-photo-3881104.jpeg?cs=srgb&dl=pexels-maahid-mohamed-3881104.jpg",
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "எண்ணங்களை பகிர்க",
                  hintStyle: TextStyle(
                    letterSpacing: -1,
                  ),
                  border: InputBorder.none,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

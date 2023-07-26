// Post UserImg with Time of the Post
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:madurai_ward_connect/src/presentation/themes/app_colors.dart';

class PostInfo extends StatelessWidget {
  const PostInfo({
    super.key,
    required this.postUserName,
    required this.postUserImage,
  });

  final String postUserName;
  final String postUserImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: AppColor.whatsAppTealGreen,
                backgroundImage: CachedNetworkImageProvider(
                  postUserImage,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                postUserName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Text(
            ". 2 நாள்",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

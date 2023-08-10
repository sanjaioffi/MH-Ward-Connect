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
              postUserImage != "" && postUserImage != "null"
                  ? CircleAvatar(
                      backgroundColor: AppColor.whatsAppTealGreen,
                      backgroundImage: CachedNetworkImageProvider(
                        postUserImage,
                      ),
                    )
                  : const CircleAvatar(
                      backgroundColor: Colors.black12,
                    ),
              const SizedBox(width: 10),
              postUserName != ""
                  ? Text(
                      postUserName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : Container(
                      margin: const EdgeInsets.only(
                        bottom: 2,
                      ),
                      height: 20,
                      width: 180,
                      decoration: const BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}

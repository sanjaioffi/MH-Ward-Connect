import 'package:flutter/material.dart';

class PostCTA extends StatelessWidget {
  const PostCTA({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CustomIcon(
                icon: Icons.ios_share,
                actionTag: "Upvote",
                count: "10",
              ),
              CustomIcon(
                icon: Icons.comment_outlined,
                actionTag: "Comment",
                count: "10",
              ),
              CustomIcon(
                icon: Icons.share_outlined,
                actionTag: "Share",
                count: "",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.icon,
    required this.actionTag,
    required this.count,
  });

  final IconData icon;

  final String actionTag;

  final String count;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 15,
        top: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                icon,
                size: 25,
              ),
              const SizedBox(width: 10),
              Text(
                count,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}

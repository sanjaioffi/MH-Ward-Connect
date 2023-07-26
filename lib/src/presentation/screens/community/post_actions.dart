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
              CustomIcon(icon: Icons.ios_share),
              CustomIcon(icon: Icons.comment_outlined),
              CustomIcon(icon: Icons.share_outlined),
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
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 15,
        top: 10,
      ),
      child: Icon(
        icon,
        size: 25,
      ),
    );
  }
}

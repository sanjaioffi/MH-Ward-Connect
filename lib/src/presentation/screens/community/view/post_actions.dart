import 'package:flutter/material.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/view/post_detailed.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/view/share_button.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/view/upvote.dart';

class PostCTA extends StatelessWidget {
  const PostCTA({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        UpVoteButton(),
        CommentButton(),
        ShareButton(),
      ],
    );
  }
}

class CommentButton extends StatelessWidget {
  const CommentButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PostDetailedView(
                  postLink: '',
                ),
              ),
            );
          },
          icon: const Icon(Icons.comment_outlined),
        ),
        const Text("20"),
      ],
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

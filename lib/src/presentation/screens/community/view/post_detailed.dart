import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/view/build_detailed.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/view/post_description.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/view/post_info.dart';

class PostDetailedView extends StatelessWidget {
  const PostDetailedView({
    super.key,
    required this.postLink,
  });
  final String postLink;

  // Just Filling the data
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildDetailedAppBar(context),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PostInfo(
                postUserName: 'சஞ்சய்',
                postUserImage:
                    "https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg"),
            Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.black12,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(postLink),
                ),
              ),
            ),
            const PostDescription(
              postContent:
                  "மதுரை மீனாட்சி சுந்தரேசுவரர் கோயில் என்பது வைகை ஆற்றின் கரையில் அமைந்துள்ள, கோயில் நகரமான மதுரையின் மத்தியில், அமைந்துள்ள சிவன் ஆலயமாகும்",
            ),
            const CommentSection()
          ],
        ),
      ),
    );
  }
}

class CommentSection extends StatelessWidget {
  const CommentSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: 10,
              left: 10,
            ),
            child: Text(
              "கருத்துக்கள்",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 4,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: CachedNetworkImageProvider(
                        "https://cdn.statusqueen.com/mobilewallpaper/thumbnail/Love-Heart-iPhone-Wallpaper-509.jpg",
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "கௌதம்",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                    left: 30,
                  ),
                  child: Text(
                    "மிக முக்கியமான பதிவு, மிகவும் பயனுள்ள பதிவு. நல்ல செயல்களை தொடருங்கள் நண்பா",
                    maxLines: 8,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

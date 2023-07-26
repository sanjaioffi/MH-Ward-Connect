import 'package:flutter/material.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/post_actions.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/post_image.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/post_info.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/post_description.dart';

class CommPostComponent extends StatelessWidget {
  const CommPostComponent({
    super.key,
    required this.imageLink,
    required this.postUser,
    required this.postDescription,
    required this.userProfile,
  });

  final String imageLink, postUser, postDescription, userProfile;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      color: Colors.grey.shade100,
      child: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PostInfo(
              postUserImage: userProfile,
              postUserName: postUser,
            ),
            PostImage(imageLink: imageLink),
            PostDescription(postContent: postDescription),
            const PostCTA(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

final List<String> userNames = [
  'சஞ்சய்',
  "சுரேஷ்",
  'கௌதம்',
];

final List<String> postUserImages = [
  "https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg",
  "https://cdn.statusqueen.com/mobilewallpaper/thumbnail/Love-Heart-iPhone-Wallpaper-509.jpg",
  "https://img.freepik.com/premium-photo/ocean-coastline-landscape_343289-8.jpg",
];

final List<String> postLinks = [
  "https://i0.wp.com/www.riochildrenshospital.com/wp-content/uploads/2018/06/madurai.jpg",
  "https://toplineindustries.in/wp-content/uploads/2022/10/blog-6-768x512-1.webp",
  "https://static.toiimg.com/thumb/msid-84715545,width-400,resizemode-4/84715545.jpg",
];

final List<String> postDescription = [
  "மதுரை மீனாட்சி சுந்தரேசுவரர் கோயில் என்பது வைகை ஆற்றின் கரையில் அமைந்துள்ள, கோயில் நகரமான மதுரையின் மத்தியில், அமைந்துள்ள சிவன் ஆலயமாகும்",
  "தலித் வடிகால் கிராமம் வழியாக செல்ல தமிழக ஓபிசிக்கள் அனுமதிக்க மறுக்கின்றனர்",
  "ஒரு சில சமயங்களில் வாகனத்தில் செல்பவர்கள் நிலை தடுமாறி கீழே விழுந்து காயம் அடைந்துள்ளனர். இது குறித்து மாவட்ட நிர்வாகத்திடம் பலமுறை புகார் அளித்தும் இதுவரை எந்த ஒரு நடவடிக்கையும் எடுக்கப்படவில்லை என குற்றச்சாட்டும் எழுந்துள்ளது."
];

List<Widget> getPosts() {
  List<Widget> posts = [];
  for (int i = 0; i < postLinks.length; i++) {
    posts.add(
      CommPostComponent(
        imageLink: postLinks[i],
        postUser: userNames[i],
        postDescription: postDescription[i],
        userProfile: postUserImages[i],
      ),
    );
  }

  //
  return posts;
}

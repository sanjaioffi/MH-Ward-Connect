import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/view/build_app.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/view/post_component.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/view/post_skeleton.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/view/quick_links.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/view/top_bar.dart';

class MyCollectionScreen extends StatefulWidget {
  const MyCollectionScreen({super.key});

  @override
  State<MyCollectionScreen> createState() => _MyCollectionScreenState();
}

class _MyCollectionScreenState extends State<MyCollectionScreen> {
  late CollectionReference<Map<String, dynamic>> postCollections;

  @override
  void initState() {
    postCollections = FirebaseFirestore.instance.collection('posts');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(context),
      body: FutureBuilder<QuerySnapshot>(
        future: postCollections.get(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const PostSkeleton();
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const PostSkeleton(); // Display a loading indicator
          }
          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const PostSkeleton();
          }
          return Column(
            children: [
              const TopBar(),
              const QuickLinks(),
              Expanded(
                child: ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    var documentSnapshot = snapshot.data!.docs[index];
                    var documentData = documentSnapshot.data() as Map;
                    String postUserName = documentData['post_username'] ?? '';
                    String postImage = documentData['post_image'] ?? '';
                    int postLikes = documentData['post_likes'] ?? '';
                    String postDescription = documentData['post_content'] ?? '';
                    String postUserImage = documentData['post_userimage'] ?? '';
                    List<dynamic> postComments = documentData['post_comments'];
                    return CommPostComponent(
                      imageLink: postUserImage,
                      postUser: postUserName,
                      postDescription: postDescription,
                      userProfile: postUserImage,
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

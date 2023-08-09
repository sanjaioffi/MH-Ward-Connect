import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/view/post_skeleton.dart';

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
      appBar: AppBar(
        title: const Text('My Collection'),
      ),
      body: const PostSkeleton(),
    );
  }
}
      // body: FutureBuilder<QuerySnapshot>(
      //   future: postCollections.get(),
      //   builder: (context, snapshot) {
      //     if (snapshot.hasError) {
      //       return Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           Text('Error: ${snapshot.error}'),
      //         ],
      //       );
      //     }

      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return const PostSkeleton(); // Display a loading indicator
      //     }

      //     if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
      //       return const Text('No data available'); // Handle no data case
      //     }

        

          // Data is available, build your UI using the snapshot data
          // return ListView.builder(
          //   itemCount: snapshot.data!.docs.length,
          //   itemBuilder: (context, index) {
          //     var documentSnapshot = snapshot.data!.docs[index];
          //     // Access entire document data using documentSnapshot.data()
          //     var documentData = documentSnapshot.data() as Map;
          //     print(documentData);
          //     String postUserName = documentData['post_username'] ?? '';
          //     String postImage = documentData['post_image'] ?? '';
          //     int postLikes = documentData['post_likes'] ?? '';
          //     String postDocument = documentData['post_content'] ?? '';
          //     String postUserImage = documentData['post_userimage'] ?? '';
          //     List<dynamic> postComments = documentData['post_comments'];
          //     return Column(
          //       children: [
          //         Text(postUserName),
          //         Text(postImage),
          //         Text(postLikes.toString()),
          //         Text(postDocument),
          //         Text(postUserImage),
          //         Text(postComments.toString()),
          //       ],
          //     );
          //   },
          // );
//         },
//       ),
//     );
//   }
// }



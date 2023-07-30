import 'package:flutter/material.dart';
import 'package:madurai_ward_connect/src/presentation/screens/post/new_content.dart';
import 'package:madurai_ward_connect/src/presentation/screens/post/new_document.dart';
import 'package:madurai_ward_connect/src/presentation/screens/post/newpost_app.dart';
import 'package:madurai_ward_connect/src/presentation/screens/post/post_button.dart';
import 'package:madurai_ward_connect/src/presentation/screens/post/post_info.dart';

class NewPostScreen extends StatelessWidget {
  const NewPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildNewPostAppBar(context),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PostUserInfo(),
              PostContent(),
              PostDocument(),
              PostButton(),
            ],
          ),
        ),
      ),
    );
  }
}

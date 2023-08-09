import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:image_picker/image_picker.dart';
import 'package:madurai_ward_connect/src/presentation/screens/post/controller/new_post_controller.dart';

final ImagePicker _imagePicker = ImagePicker();

class PostDocument extends StatelessWidget {
  const PostDocument({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      child: Container(
        alignment: Alignment.topRight,
        child: GetX<NewPostController>(builder: (controller) {
          return IconButton(
            splashRadius: controller.buttonSplasRadius.value,
            onPressed: () async {
              String postLink = await _chooseImage();
              print(postLink);
              controller.imageLink.value = postLink;
            },
            icon: const Icon(
              Icons.link,
              size: 28,
            ),
          );
        }),
      ),
    );
  }
}

Future<String> _chooseImage() async {
  final pickedFile = await _imagePicker.pickImage(
    source: ImageSource.gallery,
  );

  return pickedFile!.path;
}

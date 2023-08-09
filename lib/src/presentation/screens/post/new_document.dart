import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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
        child: IconButton(
          splashRadius: 25,
          onPressed: () async {
            final ImagePicker imagePicker = ImagePicker();
            await imagePicker.pickImage(
              source: ImageSource.gallery,
            );
          },
          icon: const Icon(
            Icons.link,
            size: 28,
          ),
        ),
      ),
    );
  }
}

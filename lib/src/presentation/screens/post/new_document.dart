import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

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
            FilePickerResult? result = await FilePicker.platform.pickFiles(
              allowMultiple: false,
              lockParentWindow: true,
              type: FileType.custom,
              allowedExtensions: [
                'jpg',
                'jpeg',
                'png',
              ],
            );
            if (result != null) {
              // PlatformFile file = result.files.first;
              // print(file.name);
              // print(file.bytes);
              // print(file.size);
              // print(file.extension);
              // print(file.path);
            } else {
              // User canceled the picker
            }
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

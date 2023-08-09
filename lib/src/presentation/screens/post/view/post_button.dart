import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madurai_ward_connect/src/presentation/screens/post/controller/new_post_controller.dart';
import 'package:madurai_ward_connect/src/presentation/themes/app_colors.dart';

class PostButton extends StatelessWidget {
  const PostButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetX<NewPostController>(
      builder: (controller) {
        return Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          height: controller.buttonHeight.value,
          width: double.infinity,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                controller.postContent.value != ""
                    ? AppColor.whatsAppTealGreen
                    : AppColor.grey,
              ),
            ),
            onPressed: () {
              controller.postContent.value != ""
                  ? controller.pushPost()
                  : ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text(
                          'Please Enter your content',
                        ),
                        duration: const Duration(
                          seconds: 2,
                        ), // Optional duration for how long the Snackbar should be visible.
                        action: SnackBarAction(
                          label: 'Dismiss',
                          onPressed: () {
                            // Code to perform when the action button is pressed.
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          },
                        ),
                      ),
                    );
            },
            child: const Text(
              "பதி",
            ),
          ),
        );
      },
    );
  }
}

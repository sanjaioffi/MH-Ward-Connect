import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madurai_ward_connect/src/presentation/screens/post/controller/new_post_controller.dart';
import 'package:madurai_ward_connect/src/presentation/screens/post/view/succes_screen.dart';
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
              elevation: const MaterialStatePropertyAll(0),
              backgroundColor: MaterialStatePropertyAll(
                controller.postContent.value.length >= 10
                    ? AppColor.whatsAppTealGreen
                    : AppColor.grey.withOpacity(.5),
              ),
            ),
            onPressed: () async {
              controller.postContent.value.length < 10
                  ? ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Please enter your post details',
                        ),
                        duration: Duration(
                          seconds: 1,
                        ), // Optional duration for how long the Snackbar should be visible.
                      ),
                    )
                  : await controller.pushPost()
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SuccessScreen(),
                          ),
                        )
                      : ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Please enter your post details',
                            ),
                            duration: Duration(
                              seconds: 1,
                            ), // Optional duration for how long the Snackbar should be visible.
                          ),
                        );
            },
            child: const Text(
              "Share",
            ),
          ),
        );
      },
    );
  }
}

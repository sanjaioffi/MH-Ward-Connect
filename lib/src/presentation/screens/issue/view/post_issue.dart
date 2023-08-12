// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madurai_ward_connect/src/presentation/screens/issue/controller/issue_controller.dart';
import 'package:madurai_ward_connect/src/presentation/themes/app_colors.dart';

class PostIssueButton extends StatelessWidget {
  const PostIssueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<IssueController>(builder: (controller) {
      return InkWell(
        onTap: () async {
          await showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text(
                  'Submit the issue to authority ?',
                ),
                content: const Text('Do you want to proceed?'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () async {
                      Navigator.of(context, rootNavigator: true).pop();
                    },
                    child: const Text('cancel'),
                  ),
                  // Issue Pop Up
                  TextButton(
                    onPressed: () async {
                      bool isPosted = await controller.updateToFirebase();
                      if (isPosted) {
                        const snackBar = SnackBar(
                          content: Text('Issue Submmited Succesfully.'),
                          duration: Duration(
                            seconds: 3,
                          ), // Duration for which the Snackbar is displayed
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        Navigator.of(context, rootNavigator: true).pop();
                      } else {
                        const snackBar = SnackBar(
                          content: Text('Could not post the issue'),
                          duration: Duration(
                            seconds: 3,
                          ), // Duration for which the Snackbar is displayed
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        Navigator.of(context, rootNavigator: true).pop();
                      }
                    },
                    child: const Text('proceed'),
                  ),
                ],
              );
            },
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: AppColor.whatsAppTealGreen,
            borderRadius: BorderRadius.circular(15),
          ),
          width: double.infinity,
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Text(
              controller.submitButton.value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      );
    });
  }
}

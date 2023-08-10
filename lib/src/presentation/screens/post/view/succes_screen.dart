import 'package:flutter/material.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/view/comm_posts.dart';
import 'package:madurai_ward_connect/src/presentation/themes/app_colors.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CommunityPostScreen(),
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: const SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Icon(
                    Icons.done,
                    size: 100,
                    color: AppColor.whatsAppTealGreen,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Posted Succesfully",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColor.whatsAppTealGreen,
                        fontSize: 30,
                      ),
                    ),
                  )
                ],
              ),
              // child: AnimatedIcon(icon: A, progress: progress)
            ),
          ],
        ),
      ),
    );
  }
}

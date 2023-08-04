import 'package:flutter/material.dart';
import 'package:madurai_ward_connect/src/presentation/screens/onboarding/personal_info.dart';
import 'package:madurai_ward_connect/src/presentation/themes/app_colors.dart';

class PostButton extends StatelessWidget {
  const PostButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            AppColor.whatsAppTealGreen,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OnboardingScreen(),
            ),
          );
        },
        child: const Text(
          "பதி",
        ),
      ),
    );
  }
}



// const InkWell(
        // child: Container(
        //   margin: const EdgeInsets.all(5),
        //   padding: const EdgeInsets.all(15),
        //   width: double.infinity,
        //   decoration: const BoxDecoration(
        //     color: AppColor.whatsAppTealGreen,
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(
        //         5,
        //       ),
        //     ),
        //   ),
        //   child: const Center(
        //     child: Text(
        //       "பதி",
        //       style: TextStyle(
        //         color: Colors.white,
        //         fontSize: 18,
        //       ),
        //     ),
        //   ),
        // ),
        // );
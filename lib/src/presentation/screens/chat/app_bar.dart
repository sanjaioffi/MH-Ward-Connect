import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madurai_ward_connect/src/controller/chat_controller.dart';
import 'package:madurai_ward_connect/src/presentation/themes/app_colors.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leadingWidth: MediaQuery.sizeOf(context).width,
    toolbarHeight: 60,
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                Get.back();},
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
          const Text(
            "ChatBot",
            style: TextStyle(
              color: AppColor.whatsAppTealGreen,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          GetX<ChatController>(
            builder: (controller) {
              return IconButton(
                onPressed: () {
                  controller.botChat.value = ["Hi there ! I'm your bot"];
                },
                icon: Icon(
                  controller.resetIcon.value,
                  color: Colors.black,
                ),
              );
            },
          )
        ],
      ),
    ),
  );
}

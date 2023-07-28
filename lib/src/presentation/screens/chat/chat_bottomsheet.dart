import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madurai_ward_connect/src/controller/chat_controller.dart';
import 'package:madurai_ward_connect/src/presentation/themes/app_colors.dart';

class ChatBottomSheet extends StatelessWidget {
  const ChatBottomSheet({
    super.key,
  });

  static TextEditingController chatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                bottom: 10,
                left: 10,
                top: 5,
              ),
              child: TextField(
                controller: chatController,
                minLines: 1,
                maxLines: null,
                autofocus: true,
                autocorrect: false,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter your query",
                ),
              ),
            ),
          ),
          GetX<ChatController>(
            builder: (controller) {
              return IconButton(
                icon: Icon(
                  controller.icon.value,
                  color: AppColor.whatsAppTealGreen,
                ),
                onPressed: () {
                  if (chatController.text.isNotEmpty) {
                    for (int i = 0; i < 2; i++) {
                      controller.botChat.add(
                        chatController.text.capitalizeFirst.toString(),
                      );
                    }
                    chatController.clear();
                  }
                },
              );
            },
          )
        ],
      ),
    );
  }
}

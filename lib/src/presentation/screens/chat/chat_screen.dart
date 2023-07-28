import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madurai_ward_connect/src/controller/chat_controller.dart';
import 'package:madurai_ward_connect/src/presentation/screens/chat/app_bar.dart';
import 'package:madurai_ward_connect/src/presentation/screens/chat/bot_widget.dart';
import 'package:madurai_ward_connect/src/presentation/screens/chat/chat_bottomsheet.dart';
import 'package:madurai_ward_connect/src/presentation/screens/chat/chat_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return Scaffold(
      appBar: buildAppBar(context),
      bottomSheet: const ChatBottomSheet(),
      body: Container(
        margin: const EdgeInsets.only(
          top: 10,
          bottom: 70,
        ),
        child: Scrollbar(
          thickness: 5,
          controller: scrollController,
          child: GetX<ChatController>(
            builder: (controller) {
              return ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: controller.botChat.length,
                itemBuilder: (context, index) {
                  return index % 2 == 0
                      ? BotWidget(
                          tileContent: controller.botChat[index],
                        )
                      : ChatWidget(
                          chatRespone: controller.botChat[index],
                        );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

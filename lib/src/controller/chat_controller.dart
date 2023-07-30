import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  var botChat = [
    "Hi there ! I'm your bot",
  ].obs;
  var icon = Icons.send.obs;
  var resetIcon = Icons.refresh.obs;
}

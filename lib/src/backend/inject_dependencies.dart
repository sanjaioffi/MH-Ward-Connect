import 'package:get/get.dart';
import 'package:madurai_ward_connect/src/controller/chat_controller.dart';

void injectDependencies() {
  Get.put(
    ChatController(),
  );
}

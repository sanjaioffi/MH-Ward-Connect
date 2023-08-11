import 'package:get/get.dart';
import 'package:madurai_ward_connect/src/controller/chat_controller.dart';
import 'package:madurai_ward_connect/src/presentation/screens/issue/controller/issue_controller.dart';
import 'package:madurai_ward_connect/src/presentation/screens/post/controller/new_post_controller.dart';

void injectDependencies() {
  Get.put(
    ChatController(),
  );
  Get.put(
    NewPostController(),
  );
  Get.put(
    IssueController(),
  );
}

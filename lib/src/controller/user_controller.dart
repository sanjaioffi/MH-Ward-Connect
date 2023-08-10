import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController extends GetxController {
  Rx<User?> _authorizedUser = Rx<User?>(null);
  RxString _userName = RxString('');


  User? get authorizedUser => _authorizedUser.value;
  String? get userName => _userName.value;

  void setAuthorizedUser(User user) {
    _authorizedUser.value = user;
    update(); // This will trigger a UI update whenever the authorizedUser changes.
  }

  void setUserName(String name) {
    _userName.value = name;
    update(); // This will trigger a UI update whenever the authorizedUser changes.
  }
}

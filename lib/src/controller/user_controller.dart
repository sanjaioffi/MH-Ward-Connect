import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController extends GetxController {
  RxString _uid =  RxString('');
  RxString _userName = RxString('');


  String? get uid => _uid.value;
  String? get userName => _userName.value;

  void setuid(String user) {
    _uid.value = user;
    update(); // This will trigger a UI update whenever the authorizedUser changes.
  }

  void setUserName(String name) {
    _userName.value = name;
    update(); // This will trigger a UI update whenever the authorizedUser changes.
  }
}

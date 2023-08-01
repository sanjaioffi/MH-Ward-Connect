import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController extends GetxController {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  Rx<User?> _authorizedUser = Rx<User?>(null);

  User? get authorizedUser => _authorizedUser.value;

  void setAuthorizedUser(User user) {
    _authorizedUser.value = user;
    update(); // This will trigger a UI update whenever the authorizedUser changes.
  }
}

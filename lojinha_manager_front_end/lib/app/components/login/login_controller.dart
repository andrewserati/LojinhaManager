import 'package:lojinha_manager/app/models/credential.dart';
import 'package:lojinha_manager/app/models/interfaces/i_login_controller.dart';

class LoginController implements ILoginController {
  @override
  Future<bool> logIn(Credential credential) async {
    if (credential.username == "admin" && credential.password == "admin") {
      return true;
    }
    return false;
  }
}

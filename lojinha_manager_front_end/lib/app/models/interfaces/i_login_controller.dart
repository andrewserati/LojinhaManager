import 'package:lojinha_manager/app/models/credential.dart';

abstract class ILoginController {
  Future<bool> logIn(Credential credential);
}

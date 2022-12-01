// ignore_for_file: public_member_api_docs, sort_constructors_first
class Credential {
  late String username;
  late String password;

  Credential({
    required this.username,
    required this.password,
  });

  @override
  String toString() => 'Credential(username: $username, password: $password)';
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Credential {
  String username;
  String password;

  Credential({
    this.username = '',
    this.password = '',
  });

  @override
  String toString() => 'Credential(username: $username, password: $password)';
}

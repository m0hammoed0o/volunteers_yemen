class LoginModule {
  final String username;
  final String password;

  LoginModule({
    required this.username,
    required this.password,
  });

  factory LoginModule.fromJson(Map<String, dynamic> json) {
    return LoginModule(
      username: json['username'] as String,
      password: json['password'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
    };
  }
}

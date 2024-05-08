import 'dart:convert';

import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:volunteers_yemen/App_packages/App_packages.dart';
import 'package:volunteers_yemen/api/http_url.dart';
import 'package:volunteers_yemen/controllers/Login_controllers/login_model.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  final isLoading = false.obs;
  final login = LoginModule(username: '', password: '').obs;

  Future<void> Login() async {
    try {
      isLoading(true); // Set loading state to true
      final response = await http.post(
        Uri.parse('${apiUrl}/auth/jwt/create/'),
        headers: <String, String>{'Accept': 'application/json'},
        body: login.toJson(),
      );

      if (response.statusCode == 200) {
        print('Logged in');
        print(response.body);

        final responseData = json.decode(response.body);
        final accessToken = responseData['access'];

        // Save the access token to local storage
        await saveToken(accessToken);

        // Navigate to the home page after successful login
        // Get.offAll(startApp());
      } else {
        // Handle login failure
        print('Login failed');
        // You can show a snackbar or display an error message to the user
      }
    } catch (e) {
      // Handle exceptions (e.g., network errors)
      print('Exception while logging in user: $e');
    } finally {
      isLoading(false); // Set loading state to false
    }
  }

  Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('accessToken', token);
  }
}

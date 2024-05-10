import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:volunteers_yemen/api/http_url.dart';
import 'package:volunteers_yemen/components/controllers/homePage/home_model.dart';

class HomeController extends GetxController {
  late List<Opportunity> opportunity =
      List<Opportunity>.empty(growable: false).obs;

  @override
  void onInit() {
    fetchOpportunities();
    super.onInit();
  }

  Future<void> fetchOpportunities() async {
    try {
      // Retrieve authentication token from local storage
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? authToken = prefs.getString('accessToken');

      if (authToken == null) {
        throw Exception('Authentication token not found');
      }

      final response = await http.get(
        Uri.parse('${apiUrl}/opportunity/api/volunteer/opportunity/'),
        headers: {'Authorization': 'JWT $authToken'},
      );

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        opportunity =
            jsonData.map((json) => Opportunity.fromJson(json)).toList();
        print(opportunity);

        // Update the state of the widget after fetching data
        update();
      } else {
        throw Exception('Failed to load opportunities');
      }
    } catch (e) {
      // Handle exceptions (e.g., network errors)
      print('Exception while getting data: $e');
    }
  }
}

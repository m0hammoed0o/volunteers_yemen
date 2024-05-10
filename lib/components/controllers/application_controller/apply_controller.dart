import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:volunteers_yemen/api/http_url.dart';
import 'package:volunteers_yemen/components/controllers/homePage/home_model.dart';

class ApplicationController {
  static Future<void> applyOpportunity({
    required int opportunityId,
    required String message,
  }) async {
    try {
      // Retrieve authentication token from local storage
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? authToken = prefs.getString('accessToken');

      if (authToken == null) {
        throw Exception('Authentication token not found');
      }

      final url = Uri.parse(
          '${apiUrl}/opportunity/api/volunteer/opportunity/$opportunityId/apply/');
      final headers = <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'JWT $authToken', // Add authentication token
      };
      final application = Application(
        opportunityId: opportunityId,
        message: message,
      );
      final body = jsonEncode(application.toJson());

      final response = await http.post(
        url,
        headers: headers,
        body: body,
      );

      if (response.statusCode == 201) {
        // Application successful
        // Handle any success UI or logic here
        print('Successfully applied to opportunity');
      } else {
        // Application failed
        // Handle any failure UI or logic here
        print('Failed to apply to opportunity: ${response.statusCode}');
        throw Exception('Failed to apply to opportunity');
      }
    } catch (e) {
      // Handle any errors from the HTTP request
      print('Error applying to opportunity: $e');
      throw Exception('Failed to connect to server');
    }
  }
}

import 'dart:convert';
import 'package:http/http.dart' as http;

class DogsBreedsApi {
  final String baseUrl;

  DogsBreedsApi(this.baseUrl);

  // GET request
  Future<http.Response> getRequest(String endpoint) async {
    final url = Uri.parse('$baseUrl/$endpoint');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      // Successful request
      return response;
    } else {
      // Handle errors
      throw Exception('Failed to load data');
    }
  }

  // POST request
  Future<http.Response> postRequest(String endpoint, Map<String, dynamic> data) async {
    final url = Uri.parse('$baseUrl/$endpoint');
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(data),
    );

    if (response.statusCode == 201) {
      // Successful request
      return response;
    } else {
      // Handle errors
      throw Exception('Failed to post data');
    }
  }
}

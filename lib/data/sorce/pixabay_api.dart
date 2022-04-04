import 'dart:convert';

import 'package:http/http.dart' as http;

class PixabayApi {
  PixabayApi(this.client);

  final http.Client client;

  static const baseUrl = "https://pixabay.com/api/";
  static const key = "26500995-6ec3df69d989c7109484c8002";

  Future<Map<String, dynamic>> fetch(String query) async {
    var response = await client.get(
        Uri.parse("$baseUrl?key=$key&q=$query&image_type=photo&pretty=true"));

    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    return jsonResponse;
  }
}

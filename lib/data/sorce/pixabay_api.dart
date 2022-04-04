import 'dart:convert';

import 'package:flutter_image_search/data/sorce/result.dart';
import 'package:http/http.dart' as http;

class PixabayApi {
  PixabayApi(this.client);

  final http.Client client;

  static const baseUrl = "https://pixabay.com/api/";
  static const key = "26500995-6ec3df69d989c7109484c8002";

  Future<Result<Map<String, dynamic>>> fetch(String query) async {
    try {
      var response = await client.get(
          Uri.parse("$baseUrl?key=$key&q=$query&image_type=photo&pretty=true"));

      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      return Result.success(jsonResponse);
    } catch (e) {
      return const Result.error('network error');
    }
  }
}

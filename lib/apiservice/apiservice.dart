import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:make_app/models/jsonplaceholder.model.dart';

class Apiservice {
  Future<List<PostModel>?> getApi() async {
    try {
      final response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/posts"),
        headers: {"User-Agent": "Mozilla/5.0", "Accept": "application/json"},
      );
      if (response.statusCode == 200) {
        List<dynamic> data = jsonDecode(response.body);
        return data.map((e) => PostModel.fromjson(e)).toList();
      } else {
        throw Exception("Data Not Found");
      }
    } catch (e) {
      return null;
    }
  }

  Future<PostModel?> addApi(String title, String body) async {
    final String apiurl = "https://jsonplaceholder.typicode.com/posts";
    try {
      final response = await http.post(
        Uri.parse(apiurl),
        headers: {"User-Agent": "Mozilla/5.0", "Accept": "application/json"},
        body: jsonEncode({"title": title, "body": body, "userId": 1}),
      );
      if (response.statusCode == 201 || response.statusCode == 200) {
        var data = jsonDecode(response.body);
        return PostModel.fromjson(data);
      } else {
        throw Exception("Error:${response.statusCode}");
      }
    } catch (e) {
      return null;
    }
  }
}

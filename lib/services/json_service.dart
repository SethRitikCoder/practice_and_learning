import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'dart:convert';
import 'package:http/http.dart ' as http;

import 'package:make_app/models/localfile_model.dart';

class JsonService {
  Future<List<LocalfileModel>?> getjson({String? api, String? jsonPath}) async {
    try {
      if (jsonPath != null) {
        final response = await rootBundle.loadString(jsonPath);
        List<dynamic> list = jsonDecode(response);

        return list.map((e) => LocalfileModel.fromJson(e)).toList();
      } else if (api != null) {
        final response = await http.get(Uri.parse(api));
        if (response.statusCode == 200) {
          List<dynamic> data = jsonDecode(response.body);
          return data.map((e) => LocalfileModel.fromJson(e)).toList();
        }
      }
    } catch (e) {
      debugPrint("Json Load Error:$e");
      return null;

      // return [];  ye ek proffeshional prespective hai null na bhej ke emptylist
      // // rethrow ka use kar sakte hai ye error ko snapshot.haserror me bhej dega
    }
    return null;
  }
}

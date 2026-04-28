import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'dart:convert';

import 'package:make_app/models/localfile_model.dart';

class JsonService {
  Future<List<LocalfileModel>?> getjson() async {
    try {
      final response = await rootBundle.loadString("assets/data.json");
      List<dynamic> list = jsonDecode(response);

      return list.map((e) => LocalfileModel.fromJson(e)).toList();
    } catch (e) {
      debugPrint("Json Load Error:$e");
      return null;

      // return [];  ye ek proffeshional prespective hai null na bhej ke emptylist
      // // rethrow ka use kar sakte hai ye error ko snapshot.haserror me bhej dega
    }
  }
}

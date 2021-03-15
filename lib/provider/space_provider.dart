import 'dart:convert';

import 'package:bwakos/model/space.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SpaceProvider extends ChangeNotifier {
  getRecommendedSpaces() async {
    var result =
        await http.get('http://bwa-cozy.herokuapp.com/recommended-spaces');

    print(result.statusCode);
    print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<SpaceModel> spaces = data.map((e) => SpaceModel.fromJson(e)).toList();
      return spaces;
    } else {
      return <SpaceModel>[];
    }
  }
}

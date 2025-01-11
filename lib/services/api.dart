import 'package:camp_final_project/data/global_data.dart';
import 'package:camp_final_project/models/car.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Api {
  String link = "https://freetestapi.com/api/v1/cars?limit=15";

  getData() async {
    var uri = Uri.parse(link);
    var response = await http.get(uri);

    var responseJson = json.decode(response.body);

    for (var element in responseJson) {
      allCars.add(Car.fromJson(element));
    }
  }
}

import 'package:flutter/material.dart';
import 'package:weather/config/network_request/network_request.dart';
import 'package:weather/features/home_page/domain/weather_model.dart';

class WeatherProvider extends ChangeNotifier {
  // String? city;
  // static String location = NetworkRequest.location;

  // Future<WeatherModel> updateWeatherData() async {
  //   WeatherModel result = await NetworkRequest.getWeatherData();
  //   notifyListeners();
  //   print(result);
  //   return result;
  // }

  updateCityName(String name) {
    NetworkRequest.location = name;
    notifyListeners();
  }

}

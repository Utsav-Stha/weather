import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather/config/network_request/base_url.dart';
import 'package:weather/core/providers/weatherProvider.dart';
import 'package:weather/features/home_page/domain/weather_model.dart';

class NetworkRequest {
  static final dio = Dio();
  static String location = 'Kathmandu';

  static Future<WeatherModel> getWeatherData() async {

    log('network called $location');
    String networkUrl = "$baseUrl?q=$location&APPID=$apiKey&units=metric";
    Response<dynamic> response = await dio.get(networkUrl);
    Map<String, dynamic> data = jsonDecode('$response');

    return WeatherModel.fromJson(data);
  }
  static Future<WeatherModel> getData() async {
    return await getWeatherData();
  }
}

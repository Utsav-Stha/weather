import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:weather/config/network_request/base_url.dart';
import 'package:weather/features/home_page/domain/weather_model.dart';

class NetworkRequest {
  static final dio = Dio();
  static Future<WeatherModel> getWeatherData(
      {String city = 'kathmandu'}) async {
    String networkUrl = "$baseUrl?q=$city&APPID=$apiKey&units=metric";
    Response<dynamic> response = await dio.get(networkUrl);
    Map<String, dynamic> data = jsonDecode('$response');
    print(data);
    return WeatherModel.fromJson(data);
  }
}

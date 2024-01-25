import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:weather/config/network_request/base_url.dart';
import 'package:weather/features/home_page/domain/weather_model.dart';

class NetworkRequest {
  static final dio = Dio();
  static Future<WeatherModel> getWeatherData() async {
    Response<dynamic> response = await dio.get(networkUrl);
    Map<String, dynamic> data = jsonDecode('$response');
    return WeatherModel.fromJson(data);
  }
}

import 'package:dio/dio.dart';

class WeatherModel {
  final String name;
  final String temp;
  final String humidity;
  final String main;
  final String desc;

  const WeatherModel(
      {required this.desc,
      required this.humidity,
      required this.main,
      required this.name,
      required this.temp});

  factory WeatherModel.fromJson(Map<dynamic, dynamic> json) {
    return WeatherModel(
      desc: json['weather'][0]['description'],
      humidity: json['main']['humidity'].toString(),
      main: json['weather'][0]['main'],
      name: json['name'],
      temp: json['main']['temp'].toString(),
    );
  }
}

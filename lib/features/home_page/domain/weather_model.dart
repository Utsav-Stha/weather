import 'package:dio/dio.dart';

class WeatherModel {
  final String name;
  final String temp;
  final String humidity;
  final String main;
  final String desc;
  final String img;
  final String pressure;
  final String windSpeed;

  const WeatherModel({
    required this.desc,
    required this.humidity,
    required this.main,
    required this.name,
    required this.temp,
    required this.img,
    required this.pressure,
    required this.windSpeed,
  });

  factory WeatherModel.fromJson(Map<dynamic, dynamic> json) {
    return WeatherModel(
      desc: json['weather'][0]['description'],
      humidity: json['main']['humidity'].toString(),
      main: json['weather'][0]['main'],
      name: json['name'],
      temp: json['main']['temp'].toString(),
      img: json['weather'][0]['icon'],
      pressure: json['main']['pressure'].toString(),
      windSpeed: json['wind']['speed'].toString(),
    );
  }
}

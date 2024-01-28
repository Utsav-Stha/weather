import 'package:flutter/material.dart';
import 'package:weather/features/home_page/domain/weather_model.dart';

class BodyUI extends StatelessWidget {
  const BodyUI({super.key, required this.weatherData});
  final AsyncSnapshot<WeatherModel> weatherData;

  @override
  Widget build(BuildContext context) {
    var data = weatherData.data;
    return Column(
      children: [
        Text(data?.name ?? ''),
        const SizedBox(
          height: 20.0,
        ),
        Text(data?.desc ?? ''),
        const SizedBox(
          height: 20.0,
        ),
        Text(data?.humidity ?? ''),
        const SizedBox(
          height: 20.0,
        ),
        Text(data?.main ?? ''),
        const SizedBox(
          height: 20.0,
        ),
        Text(data?.temp ?? ''),
      ],
    );
    ;
  }
}

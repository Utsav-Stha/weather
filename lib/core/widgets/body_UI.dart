import 'package:flutter/material.dart';
import 'package:weather/core/widgets/addition_info_card.dart';
import 'package:weather/features/home_page/domain/weather_model.dart';

class BodyUI extends StatelessWidget {
  const BodyUI({super.key, required this.weatherData});
  final AsyncSnapshot<WeatherModel> weatherData;

  @override
  Widget build(BuildContext context) {
    WeatherModel? data = weatherData.data;
    return Column(
      children: [
        Text(
          data?.name ?? '',
          style: const TextStyle(
            fontSize: 40.0,
            color: Colors.white,
            fontWeight: FontWeight.w500,
            letterSpacing: 2.0,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        CircleAvatar(
          radius: 90.0,
          backgroundColor: const Color.fromRGBO(0, 210, 189, 0.7),
          child: Image.network(
              "http://openweathermap.org/img/wn/${data?.img}@4x.png"),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Text(
          data?.main ?? '',
          style: const TextStyle(
            fontSize: 30.0,
            color: Colors.white,
            fontWeight: FontWeight.w500,
            letterSpacing: 2.0,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          '${data?.temp}°C',
          style: const TextStyle(
            fontSize: 58.0,
            color: Colors.white,
            fontWeight: FontWeight.w100,
          ),
        ),
        Text(
          data?.desc ?? '',
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.white,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(
          height: 40.0,
        ),
        AddiotionalInfoCard(
          data: data,
        ),
      ],
    );
  }
}

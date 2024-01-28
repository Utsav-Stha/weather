import 'package:flutter/material.dart';
import 'package:weather/core/widgets/additional_data.dart';
import 'package:weather/features/home_page/domain/weather_model.dart';

class AddiotionalInfoCard extends StatelessWidget {
  const AddiotionalInfoCard({super.key, required this.data});
  final WeatherModel? data;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            spreadRadius: 1.2,
            color: Color.fromARGB(255, 250, 249, 249),
            offset: Offset(-5, 5),
            blurRadius: 12.0,
          ),
          BoxShadow(
            spreadRadius: 1.2,
            color: Color.fromARGB(255, 164, 163, 163),
            offset: Offset(5, -5),
            blurRadius: 12.0,
          ),
        ],
        color: const Color.fromRGBO(0, 172, 155, 1.0),
        borderRadius: BorderRadius.circular(20.0),
      ),
      height: MediaQuery.of(context).size.width * 0.6,
      width: MediaQuery.of(context).size.width * 0.9,
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          const Text(
            'Additional Information',
            style: TextStyle(
              fontSize: 22.0,
              color: Colors.white,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Divider(
            color: Colors.white,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Column(
            children: [
              AdditionalData(data: '${data?.humidity}%', title: 'Humidity'),
              const SizedBox(
                height: 16.0,
              ),
              AdditionalData(data: '${data?.pressure}', title: 'Pressure'),
              const SizedBox(
                height: 16.0,
              ),
              AdditionalData(
                  data: '${data?.windSpeed}km/hr', title: 'Wind Speed'),
            ],
          ),
        ],
      ),
    );
  }
}

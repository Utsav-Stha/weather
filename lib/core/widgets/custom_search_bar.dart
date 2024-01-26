import 'package:flutter/material.dart';
import 'package:weather/config/network_request/network_request.dart';

class CustomSearchbar extends StatelessWidget {
  CustomSearchbar({super.key});
  TextEditingController cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 9,
          child: Container(
            height: 50.0,
            child: TextField(
              controller: cityController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                hintText: 'Search your city',
              ),
            ),
          ),
        ),
        Expanded(
          child: IconButton(
            onPressed: () async {
              await NetworkRequest.getWeatherData(
                city: cityController.text.isEmpty
                    ? 'kathmandu'
                    : cityController.text,
              );
            },
            icon: const Icon(Icons.search),
          ),
        ),
      ],
    );
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/config/network_request/network_request.dart';
import 'package:weather/core/providers/weatherProvider.dart';
import 'package:weather/core/widgets/body_UI.dart';
import 'package:weather/core/widgets/custom_search_bar.dart';
import 'package:weather/features/home_page/domain/weather_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    log('builder called');
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 14.0, 10.0, 12.0),
            child: Column(
              children: [
                CustomSearchBar(cityController: cityController),
                SizedBox(
                  height: 20.0,
                ),
                Consumer<WeatherProvider>(
                  builder: (context, model, child) => FutureBuilder(
                    future: NetworkRequest.getData(),
                    builder: (context, snapshot) {
                      log(cityController.text);
                      if (snapshot.hasData) {
                        return BodyUI(weatherData: snapshot);
                      } else if (snapshot.connectionState ==
                          ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        return Center(
                          child: Text(snapshot.hasError.toString()),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

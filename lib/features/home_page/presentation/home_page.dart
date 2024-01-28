import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/config/network_request/network_request.dart';
import 'package:weather/core/providers/weatherProvider.dart';
import 'package:weather/core/widgets/body_UI.dart';
import 'package:weather/core/widgets/custom_search_bar.dart';

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
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color.fromRGBO(0, 20, 30, 1),
                Color.fromRGBO(0, 50, 67, 1),
                Color.fromRGBO(0, 66, 88, 1),
                Color.fromRGBO(0, 100, 91, 1),
                Color.fromRGBO(0, 133, 118, 1),
                Color.fromRGBO(0, 172, 155, 1.0),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
            padding: const EdgeInsets.fromLTRB(10.0, 14.0, 10.0, 12.0),
            child: Column(
              children: [
                CustomSearchBar(cityController: cityController),
                const SizedBox(
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

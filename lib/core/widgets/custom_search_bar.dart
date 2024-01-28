import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/config/network_request/network_request.dart';
import 'package:weather/core/providers/weatherProvider.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key, required this.cityController});
  final TextEditingController cityController;

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherProvider>(
      builder: (context, model, child) => SearchBar(
        controller: widget.cityController,
        trailing: <Widget>[
          IconButton(
            onPressed: () {

              model.updateCityName(widget.cityController.text);
              log(NetworkRequest.location);
              widget.cityController.clear();

            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
    );
  }
}

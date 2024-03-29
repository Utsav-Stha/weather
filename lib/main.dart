import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/core/providers/weatherProvider.dart';
import 'package:weather/features/home_page/presentation/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,


      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => WeatherProvider(),
          ),
        ],
        child: const HomePage(),
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/views/current_weather.dart';
import 'package:weather_app/views/more_info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        elevation: 0,
        title: const Text(
          "Weather App",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu),
          color: Colors.green[900],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          // Imports
          currentWeather(Icons.wb_sunny_rounded, '28', 'Nairobi'),
          SizedBox(height: 60,),
          Text(
            'More Info', 
            style: TextStyle(
              fontSize: 20,
              color: Colors.green[900],
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
          SizedBox(height: 18,),
          // More info widget
          moreInfo('24', '2', '1014', '25.0'),
          // API integration
        ],
      ),
    );
  }
}
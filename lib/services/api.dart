import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/model/weather.dart';

class WeatherApiClient{
  Future<Weather>? getCurrentWeather(String? location) async{
    var endpoint = Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$location&appid=03e929a941e2eaad1ef4860a9bd44cce&units=metrics");
    
    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);

    print(Weather.fromJson(body));
    return Weather.fromJson(body);
  }
}
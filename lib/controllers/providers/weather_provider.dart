import 'package:flutter/material.dart';
import 'package:weather_app/models/search_location.dart';
import 'package:weather_app/models/weather_api_helper.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherProvider extends ChangeNotifier {
  SearchLocation searchLocation = SearchLocation(
    location: "Rajkot",
    locationController: TextEditingController(),
  );

  searchWeather(String location) {
    searchLocation.location = location;
    notifyListeners();
  }

  Future<Weather?>? weatherData(String location) async {
    searchLocation.weather =
        (await APIHelper.apiHelper.fetchWeatherDetails(location));
    return searchLocation.weather;
  }
}

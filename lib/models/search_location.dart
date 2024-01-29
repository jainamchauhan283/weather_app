import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class SearchLocation {
  String location;
  Weather? weather;
  TextEditingController locationController;

  SearchLocation({
    required this.location,
    this.weather,
    required this.locationController,
  });
}

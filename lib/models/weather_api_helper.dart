import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_model.dart';

class APIHelper {
  APIHelper._();

  static APIHelper apiHelper = APIHelper._();

  Future<Weather?> fetchWeatherDetails(String location) async {
    String baseUrl =
        "https://api.weatherapi.com/v1/forecast.json?key=e09f03988e1048d2966132426232205&q=";
    String endUrl = "$location&aqi=no";

    String api = baseUrl + endUrl;

    http.Response res = await http.get(Uri.parse(api));

    if (res.statusCode == 200) {
      Map decodedData = jsonDecode(res.body);

      Weather weatherData = Weather.formMap(data: decodedData);

      return weatherData;
    }
    return null;
  }
}

class Weather {
  String name;
  String region;
  String country;
  double lat;
  double lon;
  String condition;
  double temp_c;
  double feelslike_c;
  double wind_kph;
  int humidity;
  double uv;
  double vis_km;
  double pressure_mb;
  String sunrise;
  String sunset;
  int is_day;
  List hour;

  Weather({
    required this.name,
    required this.region,
    required this.country,
    required this.lat,
    required this.lon,
    required this.condition,
    required this.temp_c,
    required this.feelslike_c,
    required this.wind_kph,
    required this.humidity,
    required this.uv,
    required this.vis_km,
    required this.pressure_mb,
    required this.sunrise,
    required this.sunset,
    required this.is_day,
    required this.hour,
  });

  factory Weather.formMap({required Map data}) {
    return Weather(
      name: data['location']['name'],
      region: data['location']['region'],
      country: data['location']['country'],
      lat: data['location']['lat'],
      lon: data['location']['lon'],
      condition: data['current']['condition']['text'],
      temp_c: data['current']['temp_c'],
      feelslike_c: data['current']['feelslike_c'],
      wind_kph: data['current']['wind_kph'],
      humidity: data['current']['humidity'],
      uv: data['current']['uv'],
      vis_km: data['current']['vis_km'],
      pressure_mb: data['current']['pressure_mb'],
      sunrise: data['forecast']['forecastday'][0]['astro']['sunrise'],
      sunset: data['forecast']['forecastday'][0]['astro']['sunset'],
      is_day: data['current']['is_day'],
      hour: data['forecast']['forecastday'][0]['hour'],
    );
  }
}

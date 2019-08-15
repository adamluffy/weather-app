import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:weatherapps/models/auto_complete_city/auto_complete_city_model.dart';
import 'package:weatherapps/models/current_weather_base/current_weather_base_model.dart';
import 'package:weatherapps/models/forecast_root_base/forecast_root_base_model.dart';
import 'package:weatherapps/models/translate_base/translate_model_base.dart';
import 'package:weatherapps/other/serializers.dart';

class WeatherApi {
  static const String key = "5eefd2da0c8b4c36914102755190708";
  
  WeatherApi(this.client);
  final Dio client;

  Future<List<AutoCompleteCityModel>> fetchAutoCompleteCitiesByCityName(String cityName) async {
    assert(cityName != null);
    assert(cityName.isNotEmpty);

    final String url = "http://api.apixu.com/v1/search.json?key=$key&q=$cityName";
    Response response = await client.get(url);  

    return _resultListFromResponse(response, AutoCompleteCityModel.serializer);
  }

  Future<CurrentWeatherBaseModel> fetchCurrentWeatherByCityName(String cityName) async {
    assert(cityName != null);
    assert(cityName.isNotEmpty);

    final String url = "http://api.apixu.com/v1/current.json?key=$key&q=$cityName";
    Response response = await client.get(url);  

    return _resultFromResponse(response, CurrentWeatherBaseModel.serializer);
  }

   Future<List<TranslateBaseModel>> fetchTranslations() async {
    final String url = "http://www.apixu.com/doc/conditions.json";
    Response response = await client.get(url);

    return _resultListFromResponse(response, TranslateBaseModel.serializer);
  } 

  Future<ForecastRootBaseModel> fetchForecastWeather(String cityName, {int daysNumber}) async {
    assert(cityName != null);
    assert(cityName.isNotEmpty);
    assert(daysNumber >= 1);
    assert(daysNumber <= 10);

    final String url = "http://api.apixu.com/v1//forecast.json?key=$key&q=$cityName&days=$daysNumber";
    Response response = await client.get(url);

    return _resultFromResponse(response, ForecastRootBaseModel.serializer);
  }

  List<T> _resultListFromResponse<T>(Response response, Serializer<T> serializer) {
    if(response.statusCode != 200) return [] as List<T>;

    List<T> result = _getListFromResponse(response, serializer);
    return result;
  }

  T _resultFromResponse<T>(Response response, Serializer<T> serializer) {
    return serializers.deserializeWith<T>(serializer, response.data);
  }

  List<T> _getListFromResponse<T>(Response response, Serializer<T> serializer) {
    return List<T>.from(
      response.data.map((x) => serializers.deserializeWith(serializer, x))
    );
  }
}
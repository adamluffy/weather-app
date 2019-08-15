import 'package:weatherapps/models/current_weather_base/current_weather_base_model.dart';
import 'package:weatherapps/redux/actions/app_actions.dart';
import 'package:weatherapps/redux/dashboard/dashboard_page_state.dart';
import 'package:flutter/material.dart';

class ShowSelectCityPageAction {
  ShowSelectCityPageAction(this.context);
  final BuildContext context;
}

class FetchCurrentWeatherAction {
  FetchCurrentWeatherAction(this.cityName);
  final String cityName;
}

class RequestCurrentWeatherAction { }

class ReceivedCurrentWeatherAction {
  ReceivedCurrentWeatherAction(this.weatherModel);
  final CurrentWeatherBaseModel weatherModel;
}

class ErrorLoadingCurrentWeatherAction { }

class ShowUnableToLoadCurrentWeatherAction extends ErrorBaseAction {
  ShowUnableToLoadCurrentWeatherAction() : super("Wystąpił problem podczas wczytywania pogody");
}

class ChangeTemperatureFormatAction {
  ChangeTemperatureFormatAction(this.temperatureType);
  final TemperatureTypeEnum temperatureType;
}
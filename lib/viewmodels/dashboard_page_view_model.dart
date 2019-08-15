import 'package:weatherapps/models/current_weather/current_weather_model.dart';
import 'package:weatherapps/models/location/location_model.dart';
import 'package:weatherapps/redux/actions/dashboard_page_actions.dart';
import 'package:weatherapps/redux/app/app_state.dart';
import 'package:weatherapps/redux/dashboard/dashboard_page_state.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';

typedef void ChangeTemperature(TemperatureTypeEnum temperatureTypeEnum);
typedef void OnChangeCity(BuildContext context);

class DashboardPageViewModel {
  DashboardPageViewModel({
    @required this.cityName,
    @required this.weatherModel,
    @required this.locationModel,
    @required this.isLoading,
    @required this.temperatureType,
    @required this.changeTemperatureFormat,
    @required this.onChangeCity
  });
  
  final String cityName;
  final CurrentWeatherModel weatherModel;
  final LocationModel locationModel;
  final bool isLoading;
  final TemperatureTypeEnum temperatureType;
  final ChangeTemperature changeTemperatureFormat;
  final OnChangeCity onChangeCity;

  static DashboardPageViewModel fromStore(Store<AppState> store) {
    return DashboardPageViewModel(
      cityName: store.state.cityName,
      isLoading: store.state.dashboardPageState.isLoading,
      locationModel: store.state.dashboardPageState.locationModel,
      weatherModel: store.state.dashboardPageState.weatherModel,
      temperatureType: store.state.dashboardPageState.temperatureType,
      changeTemperatureFormat: (format) => _changeTemperatureFormat(store, format),
      onChangeCity: (context) => _onChangeCity(store, context)
    );
  }

  String getLastUpdateDate() {
    DateTime date = DateTime.parse(weatherModel.lastUpdate);
    if(date == null) return '00:00';
    int hours = date.hour;
    int minutes = date.minute;
    return "${hours >= 10 ? hours: '0' + hours.toString()}:${minutes >= 10 ? minutes : '0' + minutes.toString()}";
  }

  String getConditionImageUrl() {
    final String url = weatherModel.condition.getValidUrl();
    return url;
  }

  double getTemperature() {
    return temperatureType == TemperatureTypeEnum.F
      ? weatherModel.tempF
      : weatherModel.tempC;
  }

  double getFeelslikeTemperature() {
    return temperatureType == TemperatureTypeEnum.F
    ? weatherModel.feelTempF
    : weatherModel.feelTempC;
  }

  static void _onChangeCity(Store<AppState> store, BuildContext context) {
    store.dispatch(ShowSelectCityPageAction(context));
  }

  static void _changeTemperatureFormat(Store<AppState> store, TemperatureTypeEnum temperatureTypeEnum) {
    store.dispatch(ChangeTemperatureFormatAction(temperatureTypeEnum));
  }
}
import 'package:weatherapps/models/current_weather/current_weather_model.dart';
import 'package:weatherapps/models/location/location_model.dart';

enum TemperatureTypeEnum {
  C,
  F
}

class DashboardPageState {
  DashboardPageState({
    this.weatherModel,
    this.locationModel,
    this.isLoading,
    this.temperatureType
  });

  final CurrentWeatherModel weatherModel;
  final LocationModel locationModel;
  final bool isLoading;
  final TemperatureTypeEnum temperatureType;

  DashboardPageState copyWith({
    CurrentWeatherModel weatherModel,
    LocationModel locationModel,
    bool isLoading,
    TemperatureTypeEnum temperatureType
  }) {
    return DashboardPageState(
      isLoading: isLoading ?? this.isLoading,
      locationModel: locationModel ?? this.locationModel,
      weatherModel: weatherModel ?? this.weatherModel,
      temperatureType: temperatureType ?? this.temperatureType
    );
  }

  static DashboardPageState initial() {
    return DashboardPageState(
      isLoading: false,
      locationModel: null,
      weatherModel: null,
      temperatureType: TemperatureTypeEnum.C
    );
  }
}
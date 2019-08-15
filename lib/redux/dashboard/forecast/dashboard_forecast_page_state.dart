import 'package:weatherapps/models/forecast_base/forecast_base_model.dart';
import 'package:weatherapps/models/forecast_day_base/forecast_day_base_model.dart';

class DashboardForecastPageState {
  DashboardForecastPageState({
    this.isLoading,
    this.isError,
    this.forecast,
    this.selectedDay
  });

  final bool isLoading;
  final bool isError;
  final ForecastBaseModel forecast;
  final ForecastDayBaseModel selectedDay;

  DashboardForecastPageState copyWith({
    bool isLoading,
    bool isError,
    ForecastBaseModel forecast,
    ForecastDayBaseModel selectedDay
  }) {
    return DashboardForecastPageState(
      isLoading: isLoading ?? this.isLoading,
      isError: isError ?? this.isError,
      forecast: forecast ?? this.forecast,
      selectedDay: selectedDay ?? this.selectedDay
    );
  }

  static DashboardForecastPageState initial() {
    return DashboardForecastPageState(
      isLoading: true,
      isError: false,
      forecast: null,
      selectedDay: null
    );
  }
}
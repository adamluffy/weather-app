import 'package:weatherapps/redux/actions/dashboard_forecast_page_actions.dart';
import 'package:weatherapps/redux/dashboard/forecast/dashboard_forecast_page_state.dart';

DashboardForecastPageState dashboardForecastPageReducer(DashboardForecastPageState state, dynamic action) {
  if(action is RequestForecastWeatherAction) {
    return state.copyWith(
      isLoading: true
    );
  }

  if (action is ReceivedForecastWeatherAction) {
    return state.copyWith(
      isLoading: false,
      isError: false,
      forecast: action.forecast.forecast,
      selectedDay: action.forecast.forecast?.forecastDays?.first
    );
  }

  if(action is ErrorLoadingForecastWeatherAction) {
    return state.copyWith(
      isLoading: false,
      isError: true
    );
  }

  if(action is ChangeForecastSelectedDayAction) {
    return state.copyWith(
      selectedDay: action.selectedDay
    );
  }
  return state;
}
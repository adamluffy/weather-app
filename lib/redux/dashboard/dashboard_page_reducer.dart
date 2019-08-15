
import 'package:weatherapps/redux/actions/dashboard_page_actions.dart';
import 'package:weatherapps/redux/dashboard/dashboard_page_state.dart';

DashboardPageState dashboardPageReducer(DashboardPageState dashboardPageState, dynamic action) {
  if(action is RequestCurrentWeatherAction) {
    return dashboardPageState.copyWith(
      isLoading: true
    );
  }

  if (action is ErrorLoadingCurrentWeatherAction) {
    return dashboardPageState.copyWith(
      isLoading: false
    );
  }

  if (action is ReceivedCurrentWeatherAction) {
    return dashboardPageState.copyWith(
      isLoading: false,
      locationModel: action.weatherModel.location,
      weatherModel: action.weatherModel.currentWeather
    );
  }

  if (action is ChangeTemperatureFormatAction) {
    return dashboardPageState.copyWith(
      temperatureType: action.temperatureType
    );
  }
  return dashboardPageState;
}
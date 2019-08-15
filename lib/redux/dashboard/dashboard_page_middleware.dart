
import 'package:weatherapps/models/current_weather_base/current_weather_base_model.dart';
import 'package:weatherapps/other/service_locator.dart';
import 'package:weatherapps/redux/actions/dashboard_page_actions.dart';
import 'package:weatherapps/redux/app/app_state.dart';
import 'package:weatherapps/resources/weather_api.dart';
import 'package:redux/redux.dart';

void dashboardPageMiddleware(Store<AppState> store, dynamic action, NextDispatcher next) async {
  if(action is FetchCurrentWeatherAction) {
    await fetchCurrentWeatherAction(store, action, next);
  } else {
    next(action);
  }
}

Future fetchCurrentWeatherAction(Store<AppState> store, FetchCurrentWeatherAction action, NextDispatcher next) async {
  next(RequestCurrentWeatherAction());

  try {
    CurrentWeatherBaseModel currentWeather = await serviceLocator.get<WeatherApi>().fetchCurrentWeatherByCityName(action.cityName);
    next(ReceivedCurrentWeatherAction(currentWeather));
  } catch (ex) {
    print(ex);
    next(ErrorLoadingCurrentWeatherAction());
    store.dispatch(ShowUnableToLoadCurrentWeatherAction());
  }
}
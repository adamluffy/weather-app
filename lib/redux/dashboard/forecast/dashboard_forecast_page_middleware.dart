import 'package:weatherapps/models/forecast_root_base/forecast_root_base_model.dart';
import 'package:weatherapps/other/service_locator.dart';
import 'package:weatherapps/redux/actions/dashboard_forecast_page_actions.dart';
import 'package:weatherapps/redux/app/app_state.dart';
import 'package:weatherapps/resources/weather_api.dart';
import 'package:redux/redux.dart';

void dashboardForecastPageMiddleware(Store<AppState> store, dynamic action, NextDispatcher next) async {
  if(action is FetchForecastWeatherAction) {
    await _fetchForecastWeather(store, action, next);
  } else {
    next(action);
  }
}


_fetchForecastWeather(Store<AppState> store, FetchForecastWeatherAction action, NextDispatcher next) async {
  next(RequestForecastWeatherAction());

  try {
    WeatherApi weatherApi = serviceLocator.get<WeatherApi>();
    ForecastRootBaseModel forecastModel = await weatherApi.fetchForecastWeather(action.cityName, daysNumber:10);
    next(ReceivedForecastWeatherAction(forecastModel));
  } catch (ex) {
    print(ex);
    next(ErrorLoadingForecastWeatherAction());
    store.dispatch(ShowUnableToloadForecastWeatherAction());
  }
}
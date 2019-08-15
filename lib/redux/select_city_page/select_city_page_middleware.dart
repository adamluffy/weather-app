import 'package:weatherapps/models/auto_complete_city/auto_complete_city_model.dart';
import 'package:weatherapps/other/service_locator.dart';
import 'package:weatherapps/redux/actions/app_actions.dart';
import 'package:weatherapps/redux/actions/select_city_page_actions.dart';
import 'package:weatherapps/redux/app/app_state.dart';
import 'package:weatherapps/resources/weather_api.dart';
import 'package:redux/redux.dart';

void selectCityPageMiddleware(Store<AppState> store, dynamic action, NextDispatcher next) async {
  if(action is FetchAutoCompleteCitiesForSelectCityPageAction) {
    await _fetchAutoCompleteCitiesForSelectCityPage(store, action, next);
  } else if(action is SelectCityNameAction) {
    store.dispatch(ChangeCityForWeatherAction(action.cityName));
    store.dispatch(SaveCityNameToPrefsAction(action.cityName));
    store.dispatch(ShowDashboardPageAction(action.context));
  } else {
    next(action);
  }

}

_fetchAutoCompleteCitiesForSelectCityPage(Store<AppState> store, FetchAutoCompleteCitiesForSelectCityPageAction action, NextDispatcher next) async {
  next(RequestAutoCompleteCitiesForSelectCityPageAction());

  try {
    List<AutoCompleteCityModel> cities = await serviceLocator.get<WeatherApi>().fetchAutoCompleteCitiesByCityName(action.city);
    next(ReceivedAutoCompleteCitiesForSelectCityPageAction(cities));
  } 
  catch (ex) {
    print(ex);
    next(ErrorLoadingAutoCompleteCitiesAction);
    store.dispatch(ShowUnableToLoadAutoCompleteCitiesAction());
  }
}
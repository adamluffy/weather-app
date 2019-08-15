import 'package:weatherapps/other/service_locator.dart';
import 'package:weatherapps/redux/actions/app_actions.dart';
import 'package:weatherapps/redux/actions/dashboard_page_actions.dart';
import 'package:weatherapps/redux/app/app_state.dart';
import 'package:weatherapps/resources/translations_helper.dart';
import 'package:weatherapps/resources/user_data_provider.dart';
import 'package:weatherapps/ui/dashboard/dashboard_page.dart';
import 'package:weatherapps/ui/select_city/select_city_page.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

void appMiddleware(Store<AppState> store, dynamic action, NextDispatcher next) async {
  if(action is ErrorBaseAction) {
    _showMessageByAction(action);
  } if(action is ShowDashboardPageAction) {
    _showPage(action.context, DashboardPage());
  } else if(action is ShowSelectCityPageAction) {
    _showPage(action.context, SelectCityPage());
  } else if(action is LoadCityNameFromPrefsAction) {
    await _loadCityNameFromPrefsAction(store, next);
  } else if(action is SaveCityNameToPrefsAction) {
    await _saveCityNameToPrefsAction(action);
  } else if(action is InitializeTranslationsAction) {
    await _initializeTranslations(next);
  } else {
    next(action);
  }
}

Future _loadCityNameFromPrefsAction(Store<AppState> store, NextDispatcher next) async {
  try {
    String userCity = await UserDataProvider.getCity();
    next(ChangeCityForWeatherAction(userCity));
  } catch (ex) {
    print(ex);
    store.dispatch(ErrorLoadingCityForWeatherAction());
    next(ChangeCityForWeatherAction(null));
  }
}

Future _saveCityNameToPrefsAction(SaveCityNameToPrefsAction action) async {
  bool success = false;
  try {
    success = await UserDataProvider.saveCity(action.cityName);
  } catch (ex) {
    print(ex);
    success = false;
  }

  if(!success) {
    _showMessageByAction(ErrorSavingCityToPrefsAction());
  }
}

Future _initializeTranslations(NextDispatcher next) async {
  TranslationsHelper translationsHelper = serviceLocator.get<TranslationsHelper>();
  bool areTranslationsInitialized = await translationsHelper.initialize();

  if(!areTranslationsInitialized) {
    _showMessageByAction(ErrorLoadingTranslationsAction());
  } else {
    next(TranslationsInitializedAction());
    translationsHelper.areTranslationsAvailable = true;
  }
}

void _showPage(BuildContext context, dynamic page) {
  Navigator.push(context, MaterialPageRoute(builder: (_) => page));
}

String _lastMessage = "'";
void _showMessageByAction(ErrorBaseAction action) {
  GlobalKey<ScaffoldState> scaffoldState = serviceLocator.get<GlobalKey<ScaffoldState>>();

  if(_lastMessage == action.error) {
    scaffoldState.currentState.removeCurrentSnackBar();
  } else {
    _lastMessage = action.error;
  }

  scaffoldState.currentState.showSnackBar(
    SnackBar(
      content: Text(action.error),
      duration: action.duration ?? Duration(seconds: 1),
    )
  );
}
import 'package:weatherapps/models/auto_complete_city/auto_complete_city_model.dart';
import 'package:weatherapps/redux/actions/select_city_page_actions.dart';
import 'package:weatherapps/redux/app/app_state.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

typedef void OnCityNameChanged(String text);
typedef void OnCitySelected(BuildContext context, String text);

class SelectCityPageViewModel {
  SelectCityPageViewModel({
    this.cityName,
    this.cities,
    this.isLoading,
    this.onCityNameChanged,
    this.onCitySelected
  });

  final String cityName;
  final List<AutoCompleteCityModel> cities;
  final bool isLoading;
  final OnCityNameChanged onCityNameChanged;
  final OnCitySelected onCitySelected;

  static SelectCityPageViewModel fromStore(Store<AppState> store) {
    return SelectCityPageViewModel(
      cityName: store.state.cityName,
      cities: store.state.selectCityPageState.cities,
      isLoading: store.state.selectCityPageState.isLoading,
      onCityNameChanged: (String cityName) => _onCityNameChanged(store, cityName),
      onCitySelected: (BuildContext context, String cityName) => _onCitySelected(store, cityName, context)
    );
  }

  static void _onCityNameChanged(Store<AppState> store, String cityName) {
    if(cityName == null || cityName.trim().isEmpty) return;
  
    store.dispatch(FetchAutoCompleteCitiesForSelectCityPageAction(
      city: cityName
    ));
  }

  static void _onCitySelected(Store<AppState> store, String cityName, BuildContext context) {
    if(cityName == null || cityName.isEmpty) return;

    store.dispatch(SelectCityNameAction(cityName, context));
  }
}
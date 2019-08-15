import 'package:weatherapps/models/auto_complete_city/auto_complete_city_model.dart';
import 'package:weatherapps/redux/actions/app_actions.dart';
import 'package:flutter/material.dart';

class FetchAutoCompleteCitiesForSelectCityPageAction {
  FetchAutoCompleteCitiesForSelectCityPageAction({this.city});
  final String city;
}

class RequestAutoCompleteCitiesForSelectCityPageAction {}

class ErrorLoadingAutoCompleteCitiesAction { }

class ShowUnableToLoadAutoCompleteCitiesAction extends ErrorBaseAction {
  ShowUnableToLoadAutoCompleteCitiesAction() : super("Wystąpił błąd podczas wczytywania podpowiedzi");
}


class ReceivedAutoCompleteCitiesForSelectCityPageAction {
  ReceivedAutoCompleteCitiesForSelectCityPageAction(this.cities);
  final List<AutoCompleteCityModel> cities;
}

class SelectCityNameAction {
  SelectCityNameAction(this.cityName, this.context);
  final String cityName;
  final BuildContext context;
}
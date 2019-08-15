import 'package:weatherapps/models/auto_complete_city/auto_complete_city_model.dart';
import 'package:meta/meta.dart';

class SelectCityPageState {
  SelectCityPageState({
    @required this.cities,
    @required this.isLoading}
  );

  final List<AutoCompleteCityModel> cities;
  final bool isLoading;

  SelectCityPageState copyWith({
    List<AutoCompleteCityModel> cities,
    bool isLoading
  }) {
    return SelectCityPageState(
      cities: cities ?? this.cities,
      isLoading: isLoading ?? this.isLoading
    );
  }

  static SelectCityPageState initial() {
    return SelectCityPageState(
      cities: List.unmodifiable([]),
      isLoading: false
    );
  }
} 
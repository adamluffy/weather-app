import 'package:weatherapps/redux/actions/select_city_page_actions.dart';
import 'package:weatherapps/redux/select_city_page/select_city_page_state.dart';

SelectCityPageState selectCityPageReducer(SelectCityPageState state, dynamic action) {
  if(action is RequestAutoCompleteCitiesForSelectCityPageAction) {
    return state.copyWith(
      isLoading: true
    );
  }

  if(action is ErrorLoadingAutoCompleteCitiesAction) {
    return state.copyWith(
      isLoading: false
    );
  }


  if(action is ReceivedAutoCompleteCitiesForSelectCityPageAction) {
    return state.copyWith(
      isLoading: false,
      cities: action.cities,
    );
  }

  return state;
}
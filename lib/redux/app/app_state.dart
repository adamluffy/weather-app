import 'package:weatherapps/redux/dashboard/dashboard_page_state.dart';
import 'package:weatherapps/redux/dashboard/forecast/dashboard_forecast_page_state.dart';
import 'package:weatherapps/redux/select_city_page/select_city_page_state.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';
import 'package:weatherapps/redux/app/app_middleware.dart';
import 'package:weatherapps/redux/select_city_page/select_city_page_middleware.dart';
import 'package:weatherapps/redux/app/app_reducer.dart';
import 'package:weatherapps/redux/dashboard/dashboard_page_middleware.dart';
import 'package:weatherapps/redux/dashboard/forecast/dashboard_forecast_page_middleware.dart';

class AppState {
  AppState({
    @required this.cityName,
    @required this.isLoading,
    @required this.selectCityPageState,
    @required this.dashboardPageState,
    @required this.dashboardForecastPageState
  });

  final String cityName;
  final bool isLoading;

  final SelectCityPageState selectCityPageState;
  final DashboardPageState dashboardPageState;
  final DashboardForecastPageState dashboardForecastPageState;

  AppState copyWith({
    String cityName,
    bool isLoading,
    SelectCityPageState selectCityPageState,
    DashboardPageState dashboardPageState,
    DashboardForecastPageState dashboardForecastPageState,
    String message
  }) {
    return AppState(
      cityName: cityName ?? this.cityName,
      isLoading: isLoading ?? this.isLoading,
      selectCityPageState: selectCityPageState ?? this.selectCityPageState,
      dashboardPageState: dashboardPageState ?? this.dashboardPageState,
      dashboardForecastPageState: dashboardForecastPageState ?? this.dashboardForecastPageState
    );
  }

  static AppState intiial() {
    return AppState(
      cityName: null,
      isLoading: true,
      selectCityPageState: SelectCityPageState.initial(),
      dashboardPageState: DashboardPageState.initial(),
      dashboardForecastPageState: DashboardForecastPageState.initial()
    );
  }
}


Store<AppState> configureStore() {
    return Store<AppState>(
      appReducer,
      initialState: AppState.intiial(),
      middleware: [
        appMiddleware,
        selectCityPageMiddleware,
        dashboardPageMiddleware,
        dashboardForecastPageMiddleware,
    ]
  );
}
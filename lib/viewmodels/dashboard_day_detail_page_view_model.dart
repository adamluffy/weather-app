import 'package:weatherapps/models/forecast_day_base/forecast_day_base_model.dart';
import 'package:weatherapps/redux/app/app_state.dart';
import 'package:redux/redux.dart';

class DashboardDayDetailPageViewModel {
  DashboardDayDetailPageViewModel({
    this.dayInfo
  });

  final ForecastDayBaseModel dayInfo;

  static DashboardDayDetailPageViewModel fromStore(Store<AppState> store) {
    return DashboardDayDetailPageViewModel(dayInfo: store.state.dashboardForecastPageState.selectedDay);
  }
}
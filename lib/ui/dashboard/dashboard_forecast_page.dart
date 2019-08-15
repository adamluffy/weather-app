//import 'package:built_collection/built_collection.dart';
import 'package:weatherapps/models/forecast_day_base/forecast_day_base_model.dart';
import 'package:weatherapps/redux/actions/dashboard_forecast_page_actions.dart';
import 'package:weatherapps/redux/app/app_state.dart';
import 'package:weatherapps/viewmodels/dashboard_forecast_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class DashboardForecastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, DashboardForecastPageViewModel>(
        converter: (store) => DashboardForecastPageViewModel.fromStore(store),
        onInit: (store) =>
            store.dispatch(FetchForecastWeatherAction(store.state.cityName)),
        builder: (context, viewModel) =>
            _buildTitle(child: _buildPage(viewModel)));
  }

  Widget _loadingIndicator() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _errorButton(DashboardForecastPageViewModel viewModel) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          "An error occurred while loading the weather for several days.",
          textAlign: TextAlign.center,
        ),
        RaisedButton(
          child: Text("try again"),
          onPressed: () => viewModel.onRefresh(),
        )
      ],
    ));
  }

  Widget _buildPage(DashboardForecastPageViewModel viewModel) {
    if (viewModel.isLoading) {
      return _loadingIndicator();
    } else if (viewModel.isError || viewModel.forecast.forecastDays == null) {
      return _errorButton(viewModel);
    }

    var days = viewModel.forecast.forecastDays;

    if (days == null || days.length == 0) {
      return _errorButton(viewModel);
    }

    return Container(
        height: 140,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: days.length,
          itemBuilder: (BuildContext context, int index) {
            ForecastDayBaseModel day = days.elementAt(index);
            if (day == null) return _buildBadForecastTile();

            return _buildForecastTile(context, day, viewModel);
          },
        ));
  }

  Widget _buildForecastTile(BuildContext context, ForecastDayBaseModel dayInfo,
      DashboardForecastPageViewModel viewModel) {
    bool isSelectedDay = viewModel.isSelectedDay(dayInfo);

    return GestureDetector(
        child: FlatButton(
            onPressed: () => viewModel.onSelectDay(dayInfo),
            padding: EdgeInsets.all(0),
            shape: isSelectedDay
                ? Border.all(color: Colors.white, width: 1)
                : null,
            child: Container(
              color: isSelectedDay
                  ? Color.fromARGB(75, 255, 255, 255)
                  : Colors.transparent,
              width: 120,
              padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(viewModel.getDayTileTime(dayInfo),
                      style: TextStyle(fontWeight: FontWeight.w400)),
                  Image.network(
                    viewModel.getDayConditionImageUrl(dayInfo),
                    width: 35,
                    height: 35,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                          viewModel
                                  .getDayMaxTemperature(dayInfo)
                                  .toStringAsFixed(0) +
                              "°",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w400)),
                      SizedBox.fromSize(size: Size(10, 0)),
                      Text(
                          viewModel
                                  .getDayMinTemperature(dayInfo)
                                  .toStringAsFixed(0) +
                              "°",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 187, 211, 232))),
                    ],
                  ),
                  SizedBox.fromSize(size: Size(0, 10)),
                  Text(dayInfo.day.condition.translateCondition(),
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w400))
                ],
              ),
            )));
  }

  Widget _buildBadForecastTile() {
    return Center(child: Text("Error loading"));
  }

  Widget _buildTitle({Widget child}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("Extended Forecast", style: TextStyle(fontSize: 20)),
          Divider(
            color: Colors.white,
          ),
          SizedBox.fromSize(size: Size(0, 10)),
          child
        ],
      ),
    );
  }
}

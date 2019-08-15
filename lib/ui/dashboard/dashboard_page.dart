import 'package:weatherapps/redux/actions/dashboard_page_actions.dart';
import 'package:weatherapps/redux/app/app_state.dart';
import 'package:weatherapps/redux/dashboard/dashboard_page_state.dart';
import 'package:weatherapps/ui/common/circular_chart.dart';
import 'package:weatherapps/ui/dashboard/dashboard_day_detail_page.dart';
import 'package:weatherapps/ui/dashboard/dashboard_forecast_page.dart';
import 'package:weatherapps/viewmodels/dashboard_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, DashboardPageViewModel>(
      converter: (store) => DashboardPageViewModel.fromStore(store),
      onInit: (store) =>
          store.dispatch(FetchCurrentWeatherAction(store.state.cityName)),
      builder: (BuildContext context, DashboardPageViewModel viewModel) {
        return Material(
            child: viewModel.isLoading
                ? _buildProgressIndicator()
                : Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/a1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        physics: AlwaysScrollableScrollPhysics(),
                        child: Column(
                          children: <Widget>[
                            SizedBox.fromSize(size: Size(0.0, 50.0)),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                
                                  Text(
                                    viewModel.cityName,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16.0),
                                  ),
                                  InkWell(
                                    child: Icon(
                                      Icons.more_vert,
                                      size: 40,
                                    ),
                                    onTap: () =>
                                        viewModel.onChangeCity(context),
                                  ),
                                ]),
                            Padding(
                              padding: EdgeInsets.only(top: 20, bottom: 10),
                            ),
                            Row(
                              children: <Widget>[
                                Image.network(viewModel.getConditionImageUrl()),
                                SizedBox.fromSize(size: Size(1.0, 0.0)),
                                Text(
                                    viewModel
                                            .getTemperature()
                                            .toStringAsFixed(0) +
                                        "°",
                                    style: TextStyle(fontSize: 70)),
                                SizedBox.fromSize(size: Size(20.0, 0.0)),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      _buildTemperatureChangeWidget("C",
                                          TemperatureTypeEnum.C, viewModel),
                                      _buildTemperatureChangeWidget("F",
                                          TemperatureTypeEnum.F, viewModel),
                                      SizedBox.fromSize(size: Size(0, 10.0))
                                    ]),
                              ],
                              mainAxisAlignment: MainAxisAlignment.center,
                            ),
                            Center(
                              child: Text(
                                  viewModel.weatherModel.condition
                                      .translateCondition(),
                                  style: TextStyle(fontSize: 17)),
                            ),
                            SizedBox.fromSize(size: Size(0, 65)),
                            Container(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                  'Updated at ' + viewModel.getLastUpdateDate(),
                                  style: TextStyle(
                                    fontSize: 11,
                                  )),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 8,right: 8),
                              child: Divider(
                                color: Colors.white,
                              ),
                            ),
                            Container(
                             
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Real Time Forecast",
                                    style: TextStyle(
                                        fontSize: 18.5,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 8,right: 8),
                              child: Divider(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox.fromSize(size: Size(0, 15)),
                            Container(
                              /*  padding: EdgeInsets.only(left: 8), */
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      SizedBox.fromSize(size: Size(0, 15)),
                                      Text("Feel Like : " +
                                          viewModel
                                              .getFeelslikeTemperature()
                                              .toStringAsFixed(0) +
                                          "°"),
                                      SizedBox.fromSize(size: Size(0, 13)),
                                      Text("Visibility : " +
                                          viewModel.weatherModel.visKm
                                              .toStringAsFixed(0) +
                                          " km"),
                                      SizedBox.fromSize(size: Size(0, 13)),
                                      Text("Wind  :  " +
                                          viewModel.weatherModel.windKph
                                              .toStringAsFixed(0) +
                                          " km/h"),
                                      SizedBox.fromSize(size: Size(0, 13)),
                                      Text("Pressure : " +
                                          viewModel.weatherModel.pressureMb
                                              .toStringAsFixed(0) +
                                          " mbar"),
                                      SizedBox.fromSize(size: Size(0, 13)),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      CircularChart(
                                        title: "Humidity",
                                        percentage:
                                            viewModel.weatherModel.humidity,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox.fromSize(size: Size(0, 25)),
                           Container(
                              padding: EdgeInsets.only(left: 8,right: 8),
                              child: Divider(
                                color: Colors.white,
                              ),
                            ),
                           
                            _buildForecastWidget(),
                            SizedBox.fromSize(size: Size(0, 10)),
                            _buildDayWidget()
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ))));
      },
    );
  }

  Widget _buildForecastWidget() {
    return DashboardForecastPage();
  }

  Widget _buildDayWidget() {
    return DashboardDayDetailPage();
  }

  //Text _smallText(String text) => Text(text, style: TextStyle(fontSize: 13));

  Widget _buildProgressIndicator() {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Loading weather..."),
        SizedBox.fromSize(size: Size(0, 20.0)),
        CircularProgressIndicator()
      ],
    ));
  }

  Widget _buildTemperatureChangeWidget(
      String char, TemperatureTypeEnum type, DashboardPageViewModel vm) {
    return InkWell(
      child: Text(char,
          style: TextStyle(
              fontSize: 20,
              fontWeight: vm.temperatureType == type
                  ? FontWeight.bold
                  : FontWeight.w300)),
      onTap: () => vm.changeTemperatureFormat(type),
      splashColor: Colors.red,
    );
  }
}

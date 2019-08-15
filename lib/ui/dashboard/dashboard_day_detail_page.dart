import 'package:weatherapps/redux/app/app_state.dart';
import 'package:weatherapps/ui/common/circular_chart.dart';
import 'package:weatherapps/viewmodels/dashboard_day_detail_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class DashboardDayDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, DashboardDayDetailPageViewModel>(
      converter: (store) => DashboardDayDetailPageViewModel.fromStore(store),
      builder: (store, viewModel) =>
          viewModel.dayInfo == null ? Container() : _buildPage(viewModel),
    );
  }

  Widget _buildPage(DashboardDayDetailPageViewModel viewModel) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(children: <Widget>[
        _drawLine(),
        _space(),
        _space(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "Comfort Level",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        _space(),
        _space(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 8.0),
                  child: CircularChart(
                    title: "Humidity",
                    percentage: viewModel.dayInfo.day.humidity,
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("UV index : " + viewModel.dayInfo.day.uv.toString()),
                  _space(),
                  Text("Visibility : " +
                      viewModel.dayInfo.day.visKm.toString() +
                      " km/h"),
                  _space(),
                  Text("Precipitation : " +
                      viewModel.dayInfo.day.precipMm.toString() +
                      " mm"),
                ],
              ),
            ),
          ],
        ),
        _space(),
        _space(),
        _space(),
        _space(),
        _space(),
        _space(),
        _drawLine(),
        _space(),
        _space(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "Wind",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        _space(),
        _space(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: <Widget>[
                SizedBox.fromSize(
                  child: Image.asset(
                    "assets/windmill.png",
                    height: 100,
                    width: 100,
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: Column(
                children: <Widget>[
                  Text(
                      "Speed : " +
                          viewModel.dayInfo.day.maxWindKph.toStringAsFixed(0) +
                          " km/h",
                      style: TextStyle(fontSize: 15)),
                ],
              ),
            ),
          ],
        ),
        _space(),
        _space(),
        _space(),
        _space(),
        _drawLine(),
        _space(),
        _space(),
        Row(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Full Moon ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                _space(),
                _space(),
                _space(),
                _drawState("Sunrise", Icons.wb_sunny,
                    viewModel.dayInfo.astro.sunRise24H),
                _space(),
                _space(),
                _drawState("Sunset", Icons.wb_sunny,
                    viewModel.dayInfo.astro.sunSet24H),
              ],
            ),
            Column(
              children: <Widget>[
                _space(),
                _space(),
                _space(),
                _drawState("Moonrise", Icons.brightness_3,
                    viewModel.dayInfo.astro.moonRise24H),
                _space(),
                _space(),
                _drawState("Moonset", Icons.brightness_3,
                    viewModel.dayInfo.astro.moonSet24H),
              ],
            ),
          ],
        ),
        _space(),
        _space(),
        _space(),
        _space(),
      ]),
    );
  }

  Widget _drawState(String header, IconData icon, String value) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(header, style: TextStyle(fontSize: 18)),
      _space(),
      Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Icon(icon),
        SizedBox.fromSize(
          size: Size(10, 0),
        ),
        Text(value, style: TextStyle(fontSize: 20))
      ])
    ]);
  }

  Widget _drawLine() {
    return Row(children: [
      Expanded(
          child: Container(
        height: 0.3,
        color: Color.fromARGB(255, 255, 255, 255),
      ))
    ]);
  }

  Widget _space([double value = 10]) {
    return SizedBox.fromSize(size: Size(0, value));
  }

  /* Widget _buildTitle({Widget child}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[_space(), child],
      ),
    );
  } */
}

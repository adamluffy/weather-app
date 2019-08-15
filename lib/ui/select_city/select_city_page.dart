import 'package:weatherapps/models/auto_complete_city/auto_complete_city_model.dart';
import 'package:weatherapps/redux/app/app_state.dart';
import 'package:weatherapps/viewmodels/select_city_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class SelectCityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SelectCityPageViewModel>(
      converter: (store) => SelectCityPageViewModel.fromStore(store),
      builder: (BuildContext context, SelectCityPageViewModel viewModel) {
        return Material(
          child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                color: Colors.black26,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter the city name",
                  ),
                  onChanged: (String text) => viewModel.onCityNameChanged(text),
                ),
              ),
              Expanded(
                  child: viewModel.isLoading 
                  ? _loadingScreen() 
                  : ListView.builder(
                      itemCount: viewModel.cities.length,
                      itemBuilder: (BuildContext context, int index) {
                        AutoCompleteCityModel city = viewModel.cities.elementAt(index);
                        return _buildAutoCompleteCityModelByCity(context, city, viewModel);
                      },
                    )
              ),
            ]
          )
        );
      }
    );
  }

  Widget _loadingScreen() {
    return Center(
      child: CircularProgressIndicator()
    );
  }

  Widget _buildAutoCompleteCityModelByCity(BuildContext context, AutoCompleteCityModel city, SelectCityPageViewModel viewModel) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(15.0),
        child: Text(city.name),
      ),
      onTap: () => viewModel.onCitySelected(context, city.name),
    );
  }
}
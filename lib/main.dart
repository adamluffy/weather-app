import 'package:weatherapps/other/service_locator.dart';
import 'package:weatherapps/redux/actions/app_actions.dart';
import 'package:weatherapps/redux/app/app_state.dart';
import 'package:weatherapps/ui/select_city/select_city_page.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

void main() {
  configureServiceLocator();
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  final Store<AppState> store = configureStore();

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
          title: "WeatherApp",
          theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
      ),
          home: StoreConnector<AppState, dynamic>(
              converter: (store) => Null,
              onInit: (store) {
                store.dispatch(InitializeTranslationsAction());
                store.dispatch(LoadCityNameFromPrefsAction(context));
              },
              builder: (context, viewModel) => ScaffoldPage(store))),
    );
  }
}

class ScaffoldPage extends StatelessWidget {
  ScaffoldPage(this.store);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WeatherApp",
          style: TextStyle(color: Colors.white),
        ),
       
      ),
      key: serviceLocator.get<GlobalKey<ScaffoldState>>(),
      body: Container(
        padding: EdgeInsets.only(top: 100),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blue, Colors.red])),
         child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("Muhammad Luqman NurHakim Bin Md Saidi"),
              Text("B09180036"),
              _space(),
              Text("Anantha Rao"),
              Text(" B02170019"),
              _space(),
              Text("Lim Yeu Jie"),
              Text("B02170012"),
              _space(),
              _space(),
              _space(),
               RaisedButton(
                child: Text("WeatherApp"),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SelectCityPage())),
              ),
              _space(),
              _space(),
              _space(),
              Text("Mohd Adam Bin Ezanee"),
              Text("B02190003"),
              _space(),
              Text("Jinny Lau Pei Wen"),
              Text("B04180047"),
             
            ],
          ),
        ],
      ),
      ),
       

      //_buildContent(),
    );
  }
 Widget _space([double value = 17]) {
    return SizedBox.fromSize(size: Size(0, value));
  }
  /* _buildContent() {
    if (store.state.isLoading) {
      return _loadingPage();
    }

    if (store.state.cityName != null && store.state.cityName.isNotEmpty) {
      return DashboardPage();
    } else {
      return SelectCityPage();
    }
  }

  _loadingPage() {
    return Center(child: CircularProgressIndicator());
  } */
}

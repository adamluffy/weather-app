import 'package:shared_preferences/shared_preferences.dart';

class UserDataProvider 
{
  static const city_key = "weather_app_city";

  static Future<String> getCity() async
  {
    SharedPreferences instance = await SharedPreferences.getInstance();
    String city = instance.getString(city_key);
    return city;
  }

  static Future<bool> saveCity(String city) async
  {
    SharedPreferences instance = await SharedPreferences.getInstance();
    bool isSuccessful = await instance.setString(city_key, city);
    return isSuccessful;
  }
}
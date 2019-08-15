import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weatherapps/models/current_weather/current_weather_model.dart';
import 'package:weatherapps/models/location/location_model.dart';

part 'current_weather_base_model.g.dart';

abstract class CurrentWeatherBaseModel implements Built<CurrentWeatherBaseModel, CurrentWeatherBaseModelBuilder> {
  static Serializer<CurrentWeatherBaseModel> get serializer => _$currentWeatherBaseModelSerializer;

  LocationModel get location;
  
  @BuiltValueField(wireName: "current")
  CurrentWeatherModel get currentWeather;

  CurrentWeatherBaseModel._();
  factory CurrentWeatherBaseModel([updates(CurrentWeatherBaseModelBuilder b)]) => _$CurrentWeatherBaseModel();
}
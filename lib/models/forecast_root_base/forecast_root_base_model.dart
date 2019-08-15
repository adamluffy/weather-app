import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weatherapps/models/current_weather/current_weather_model.dart';
import 'package:weatherapps/models/forecast_base/forecast_base_model.dart';
import 'package:weatherapps/models/location/location_model.dart';
part 'forecast_root_base_model.g.dart';

abstract class ForecastRootBaseModel implements Built<ForecastRootBaseModel, ForecastRootBaseModelBuilder> {
  static Serializer<ForecastRootBaseModel> get serializer => _$forecastRootBaseModelSerializer;
  
  LocationModel get location;

  @BuiltValueField(wireName: "current")
  CurrentWeatherModel get currentWeather;

  ForecastBaseModel get forecast;

  ForecastRootBaseModel._();
  factory ForecastRootBaseModel([updates(ForecastRootBaseModelBuilder b)]) => _$ForecastRootBaseModel();
}   
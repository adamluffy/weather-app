import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weatherapps/models/condition/condition_model.dart';

part 'current_weather_model.g.dart';

abstract class CurrentWeatherModel implements Built<CurrentWeatherModel, CurrentWeatherModelBuilder> {
  static Serializer<CurrentWeatherModel> get serializer => _$currentWeatherModelSerializer;

  @BuiltValueField(wireName: "last_updated_epoch")
  int get lastUpdateTimespan;
  
  @BuiltValueField(wireName: "last_updated")
  String get lastUpdate;

  @BuiltValueField(wireName: "temp_c")
  double get tempC;

  @BuiltValueField(wireName: "temp_f")
  double get tempF;

  @BuiltValueField(wireName: "is_day")
  int get isDay;

  ConditionModel get condition;

  @BuiltValueField(wireName: "wind_mph")
  double get windMph;

  @BuiltValueField(wireName: "wind_kph")
  double get windKph;

  @BuiltValueField(wireName: "wind_degree")
  double get indDegree;

  @BuiltValueField(wireName: "wind_dir")
  String get windDir;

  @BuiltValueField(wireName: "pressure_mb")
  double get pressureMb;

  @BuiltValueField(wireName: "pressure_in")
  double get pressureIn;

  @BuiltValueField(wireName: "precip_mm")
  double get precipMm;

  @BuiltValueField(wireName: "precip_in")
  double get precipIn;

  double get humidity;
  
  double get cloud;
  
  @BuiltValueField(wireName: "feelslike_c")
  double get feelTempC;

  @BuiltValueField(wireName: "feelslike_f")
  double get feelTempF;

  @BuiltValueField(wireName: "vis_km")
  double get visKm;

  @BuiltValueField(wireName: "vis_miles")
  double get visMiles;

  double get uv;

  CurrentWeatherModel._();
  factory CurrentWeatherModel([updates(CurrentWeatherModelBuilder b)]) => _$CurrentWeatherModel();
}
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weatherapps/models/condition/condition_model.dart';
part 'forecast_day_model.g.dart';

abstract class ForecastDayModel
    implements Built<ForecastDayModel, ForecastDayModelBuilder> {
  static Serializer<ForecastDayModel> get serializer =>
      _$forecastDayModelSerializer;

  @BuiltValueField(wireName: "maxtemp_c")
  double get maxTempC;

  @BuiltValueField(wireName: "maxtemp_f")
  double get maxTempF;

  @BuiltValueField(wireName: "mintemp_c")
  double get minTempC;

  @BuiltValueField(wireName: "mintemp_f")
  double get minTempF;

  @BuiltValueField(wireName: "avgtemp_c")
  double get averageTempC;

  @BuiltValueField(wireName: "avgtemp_f")
  double get averageTempF;

  @BuiltValueField(wireName: "maxwind_mph")
  double get maxWindMph;

  @BuiltValueField(wireName: "maxwind_kph")
  double get maxWindKph;

  @BuiltValueField(wireName: "totalprecip_mm")
  double get precipMm;

  @BuiltValueField(wireName: "totalprecip_in")
  double get precipIn;

  @BuiltValueField(wireName: "avgvis_km")
  double get visKm;

  @BuiltValueField(wireName: "avgvis_miles")
  double get visMiles;

  @BuiltValueField(wireName: "avghumidity")
  double get humidity;

  ConditionModel get condition;

  @BuiltValueField(wireName: "uv")
  double get uv;

  ForecastDayModel._();
  factory ForecastDayModel([updates(ForecastDayModelBuilder b)]) =>
      _$ForecastDayModel();
}

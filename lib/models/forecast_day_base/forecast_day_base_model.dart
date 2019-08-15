import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weatherapps/models/astro_model/astro_model.dart';
import 'package:weatherapps/models/forecast_day/forecast_day_model.dart';
part 'forecast_day_base_model.g.dart';

abstract class ForecastDayBaseModel implements Built<ForecastDayBaseModel, ForecastDayBaseModelBuilder> {
  static Serializer<ForecastDayBaseModel> get serializer => _$forecastDayBaseModelSerializer;
  
  String get date;

  @BuiltValueField(wireName: "date_epoch")
  int get dateTimestamp;

  ForecastDayModel get day;  

  AstroModel get astro;

  ForecastDayBaseModel._();
  factory ForecastDayBaseModel([updates(ForecastDayBaseModelBuilder b)]) => _$ForecastDayBaseModel();
}   
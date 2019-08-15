import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weatherapps/models/forecast_day_base/forecast_day_base_model.dart';
part 'forecast_base_model.g.dart';

abstract class ForecastBaseModel implements Built<ForecastBaseModel, ForecastBaseModelBuilder> {
  static Serializer<ForecastBaseModel> get serializer => _$forecastBaseModelSerializer;
  
  @BuiltValueField(wireName: "forecastday")
  BuiltList<ForecastDayBaseModel> get forecastDays;

  ForecastBaseModel._();
  factory ForecastBaseModel([updates(ForecastBaseModelBuilder b)]) => _$ForecastBaseModel();
} 
library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:weatherapps/models/astro_model/astro_model.dart';
import 'package:weatherapps/models/auto_complete_city/auto_complete_city_model.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:weatherapps/models/condition/condition_model.dart';
import 'package:weatherapps/models/current_weather/current_weather_model.dart';
import 'package:weatherapps/models/current_weather_base/current_weather_base_model.dart';
import 'package:weatherapps/models/forecast_base/forecast_base_model.dart';
import 'package:weatherapps/models/forecast_day/forecast_day_model.dart';
import 'package:weatherapps/models/forecast_day_base/forecast_day_base_model.dart';
import 'package:weatherapps/models/forecast_root_base/forecast_root_base_model.dart';
import 'package:weatherapps/models/location/location_model.dart';
import 'package:weatherapps/models/translate/translate_model.dart';
import 'package:weatherapps/models/translate_base/translate_model_base.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  AutoCompleteCityModel,
  LocationModel,
  CurrentWeatherModel,
  CurrentWeatherBaseModel,
  ConditionModel,
  TranslateModel,
  TranslateBaseModel,
  AstroModel,
  ForecastBaseModel,
  ForecastDayBaseModel,
  ForecastDayModel,
  ForecastRootBaseModel
])
final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

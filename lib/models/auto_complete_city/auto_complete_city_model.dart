import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auto_complete_city_model.g.dart';

abstract class AutoCompleteCityModel implements Built<AutoCompleteCityModel, AutoCompleteCityModelBuilder> {
  static Serializer<AutoCompleteCityModel> get serializer => _$autoCompleteCityModelSerializer;
  
  int get id;
  
  String get name;

  String get region;

  String get country;

  @BuiltValueField(wireName: "lat")
  double get latitude;

  @BuiltValueField(wireName: "lon")
  double get longtitude;

  @BuiltValueField(wireName: "url")
  String get cityUrl;

  AutoCompleteCityModel._();

  factory AutoCompleteCityModel([updates(AutoCompleteCityModelBuilder b)]) => _$AutoCompleteCityModel();
}
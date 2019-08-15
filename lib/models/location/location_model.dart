import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'location_model.g.dart';

abstract class LocationModel implements Built<LocationModel, LocationModelBuilder> {
  static Serializer<LocationModel> get serializer => _$locationModelSerializer;

  String get name;
  
  String get region;
  
  String get country;
  
  @BuiltValueField(wireName: "lat")
  double get latitutde;
  
  @BuiltValueField(wireName: "lon")
  double get longtitude;
  
  @BuiltValueField(wireName: "tz_id")
  String get timeZoneId;
  
  @BuiltValueField(wireName: "localtime_epoch")
  int get localTimeTimeSpan;
  
  @BuiltValueField(wireName: "localtime")
  String get localTime;

  LocationModel._();
  factory LocationModel([updates(LocationModelBuilder b)]) => _$LocationModel();
}

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weatherapps/models/translate/translate_model.dart';
part 'translate_model_base.g.dart';

abstract class TranslateBaseModel implements Built<TranslateBaseModel, TranslateBaseModelBuilder> {
  static Serializer<TranslateBaseModel> get serializer => _$translateBaseModelSerializer;
  
  int get code;

  String get day;
  
  String get night;

  @BuiltValueField(wireName: "icon")
  int get iconCode;
  
  BuiltList<TranslateModel> get languages;

  TranslateBaseModel._();
  factory TranslateBaseModel([updates(TranslateBaseModelBuilder b)]) => _$TranslateBaseModel();
} 
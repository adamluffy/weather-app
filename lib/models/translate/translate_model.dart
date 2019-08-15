import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'translate_model.g.dart';

abstract class TranslateModel implements Built<TranslateModel, TranslateModelBuilder> {
  static Serializer<TranslateModel> get serializer => _$translateModelSerializer;
  
  @BuiltValueField(wireName: "lang_name")
  String get language;

  @BuiltValueField(wireName: "lang_iso")
  String get languageIsoCode;

  @BuiltValueField(wireName: "day_text")
  String get dayText;

  @BuiltValueField(wireName: "night_text")
  String get nightText;

  TranslateModel._();
  factory TranslateModel([updates(TranslateModelBuilder b)]) => _$TranslateModel();
}   
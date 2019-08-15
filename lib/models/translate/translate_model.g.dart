// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translate_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TranslateModel> _$translateModelSerializer =
    new _$TranslateModelSerializer();

class _$TranslateModelSerializer
    implements StructuredSerializer<TranslateModel> {
  @override
  final Iterable<Type> types = const [TranslateModel, _$TranslateModel];
  @override
  final String wireName = 'TranslateModel';

  @override
  Iterable<Object> serialize(Serializers serializers, TranslateModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'lang_name',
      serializers.serialize(object.language,
          specifiedType: const FullType(String)),
      'lang_iso',
      serializers.serialize(object.languageIsoCode,
          specifiedType: const FullType(String)),
      'day_text',
      serializers.serialize(object.dayText,
          specifiedType: const FullType(String)),
      'night_text',
      serializers.serialize(object.nightText,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  TranslateModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TranslateModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'lang_name':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lang_iso':
          result.languageIsoCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'day_text':
          result.dayText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'night_text':
          result.nightText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TranslateModel extends TranslateModel {
  @override
  final String language;
  @override
  final String languageIsoCode;
  @override
  final String dayText;
  @override
  final String nightText;

  factory _$TranslateModel([void Function(TranslateModelBuilder) updates]) =>
      (new TranslateModelBuilder()..update(updates)).build();

  _$TranslateModel._(
      {this.language, this.languageIsoCode, this.dayText, this.nightText})
      : super._() {
    if (language == null) {
      throw new BuiltValueNullFieldError('TranslateModel', 'language');
    }
    if (languageIsoCode == null) {
      throw new BuiltValueNullFieldError('TranslateModel', 'languageIsoCode');
    }
    if (dayText == null) {
      throw new BuiltValueNullFieldError('TranslateModel', 'dayText');
    }
    if (nightText == null) {
      throw new BuiltValueNullFieldError('TranslateModel', 'nightText');
    }
  }

  @override
  TranslateModel rebuild(void Function(TranslateModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TranslateModelBuilder toBuilder() =>
      new TranslateModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TranslateModel &&
        language == other.language &&
        languageIsoCode == other.languageIsoCode &&
        dayText == other.dayText &&
        nightText == other.nightText;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, language.hashCode), languageIsoCode.hashCode),
            dayText.hashCode),
        nightText.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TranslateModel')
          ..add('language', language)
          ..add('languageIsoCode', languageIsoCode)
          ..add('dayText', dayText)
          ..add('nightText', nightText))
        .toString();
  }
}

class TranslateModelBuilder
    implements Builder<TranslateModel, TranslateModelBuilder> {
  _$TranslateModel _$v;

  String _language;
  String get language => _$this._language;
  set language(String language) => _$this._language = language;

  String _languageIsoCode;
  String get languageIsoCode => _$this._languageIsoCode;
  set languageIsoCode(String languageIsoCode) =>
      _$this._languageIsoCode = languageIsoCode;

  String _dayText;
  String get dayText => _$this._dayText;
  set dayText(String dayText) => _$this._dayText = dayText;

  String _nightText;
  String get nightText => _$this._nightText;
  set nightText(String nightText) => _$this._nightText = nightText;

  TranslateModelBuilder();

  TranslateModelBuilder get _$this {
    if (_$v != null) {
      _language = _$v.language;
      _languageIsoCode = _$v.languageIsoCode;
      _dayText = _$v.dayText;
      _nightText = _$v.nightText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TranslateModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TranslateModel;
  }

  @override
  void update(void Function(TranslateModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TranslateModel build() {
    final _$result = _$v ??
        new _$TranslateModel._(
            language: language,
            languageIsoCode: languageIsoCode,
            dayText: dayText,
            nightText: nightText);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

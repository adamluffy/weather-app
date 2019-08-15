// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translate_model_base.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TranslateBaseModel> _$translateBaseModelSerializer =
    new _$TranslateBaseModelSerializer();

class _$TranslateBaseModelSerializer
    implements StructuredSerializer<TranslateBaseModel> {
  @override
  final Iterable<Type> types = const [TranslateBaseModel, _$TranslateBaseModel];
  @override
  final String wireName = 'TranslateBaseModel';

  @override
  Iterable<Object> serialize(Serializers serializers, TranslateBaseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(int)),
      'day',
      serializers.serialize(object.day, specifiedType: const FullType(String)),
      'night',
      serializers.serialize(object.night,
          specifiedType: const FullType(String)),
      'icon',
      serializers.serialize(object.iconCode,
          specifiedType: const FullType(int)),
      'languages',
      serializers.serialize(object.languages,
          specifiedType: const FullType(
              BuiltList, const [const FullType(TranslateModel)])),
    ];

    return result;
  }

  @override
  TranslateBaseModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TranslateBaseModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'day':
          result.day = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'night':
          result.night = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'icon':
          result.iconCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'languages':
          result.languages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TranslateModel)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$TranslateBaseModel extends TranslateBaseModel {
  @override
  final int code;
  @override
  final String day;
  @override
  final String night;
  @override
  final int iconCode;
  @override
  final BuiltList<TranslateModel> languages;

  factory _$TranslateBaseModel(
          [void Function(TranslateBaseModelBuilder) updates]) =>
      (new TranslateBaseModelBuilder()..update(updates)).build();

  _$TranslateBaseModel._(
      {this.code, this.day, this.night, this.iconCode, this.languages})
      : super._() {
    if (code == null) {
      throw new BuiltValueNullFieldError('TranslateBaseModel', 'code');
    }
    if (day == null) {
      throw new BuiltValueNullFieldError('TranslateBaseModel', 'day');
    }
    if (night == null) {
      throw new BuiltValueNullFieldError('TranslateBaseModel', 'night');
    }
    if (iconCode == null) {
      throw new BuiltValueNullFieldError('TranslateBaseModel', 'iconCode');
    }
    if (languages == null) {
      throw new BuiltValueNullFieldError('TranslateBaseModel', 'languages');
    }
  }

  @override
  TranslateBaseModel rebuild(
          void Function(TranslateBaseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TranslateBaseModelBuilder toBuilder() =>
      new TranslateBaseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TranslateBaseModel &&
        code == other.code &&
        day == other.day &&
        night == other.night &&
        iconCode == other.iconCode &&
        languages == other.languages;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, code.hashCode), day.hashCode), night.hashCode),
            iconCode.hashCode),
        languages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TranslateBaseModel')
          ..add('code', code)
          ..add('day', day)
          ..add('night', night)
          ..add('iconCode', iconCode)
          ..add('languages', languages))
        .toString();
  }
}

class TranslateBaseModelBuilder
    implements Builder<TranslateBaseModel, TranslateBaseModelBuilder> {
  _$TranslateBaseModel _$v;

  int _code;
  int get code => _$this._code;
  set code(int code) => _$this._code = code;

  String _day;
  String get day => _$this._day;
  set day(String day) => _$this._day = day;

  String _night;
  String get night => _$this._night;
  set night(String night) => _$this._night = night;

  int _iconCode;
  int get iconCode => _$this._iconCode;
  set iconCode(int iconCode) => _$this._iconCode = iconCode;

  ListBuilder<TranslateModel> _languages;
  ListBuilder<TranslateModel> get languages =>
      _$this._languages ??= new ListBuilder<TranslateModel>();
  set languages(ListBuilder<TranslateModel> languages) =>
      _$this._languages = languages;

  TranslateBaseModelBuilder();

  TranslateBaseModelBuilder get _$this {
    if (_$v != null) {
      _code = _$v.code;
      _day = _$v.day;
      _night = _$v.night;
      _iconCode = _$v.iconCode;
      _languages = _$v.languages?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TranslateBaseModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TranslateBaseModel;
  }

  @override
  void update(void Function(TranslateBaseModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TranslateBaseModel build() {
    _$TranslateBaseModel _$result;
    try {
      _$result = _$v ??
          new _$TranslateBaseModel._(
              code: code,
              day: day,
              night: night,
              iconCode: iconCode,
              languages: languages.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'languages';
        languages.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TranslateBaseModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

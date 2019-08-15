// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ConditionModel> _$conditionModelSerializer =
    new _$ConditionModelSerializer();

class _$ConditionModelSerializer
    implements StructuredSerializer<ConditionModel> {
  @override
  final Iterable<Type> types = const [ConditionModel, _$ConditionModel];
  @override
  final String wireName = 'ConditionModel';

  @override
  Iterable<Object> serialize(Serializers serializers, ConditionModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'text',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'icon',
      serializers.serialize(object.iconUrl,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  ConditionModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConditionModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'text':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'icon':
          result.iconUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ConditionModel extends ConditionModel {
  @override
  final String description;
  @override
  final String iconUrl;
  @override
  final int code;

  factory _$ConditionModel([void Function(ConditionModelBuilder) updates]) =>
      (new ConditionModelBuilder()..update(updates)).build();

  _$ConditionModel._({this.description, this.iconUrl, this.code}) : super._() {
    if (description == null) {
      throw new BuiltValueNullFieldError('ConditionModel', 'description');
    }
    if (iconUrl == null) {
      throw new BuiltValueNullFieldError('ConditionModel', 'iconUrl');
    }
    if (code == null) {
      throw new BuiltValueNullFieldError('ConditionModel', 'code');
    }
  }

  @override
  ConditionModel rebuild(void Function(ConditionModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConditionModelBuilder toBuilder() =>
      new ConditionModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConditionModel &&
        description == other.description &&
        iconUrl == other.iconUrl &&
        code == other.code;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, description.hashCode), iconUrl.hashCode), code.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ConditionModel')
          ..add('description', description)
          ..add('iconUrl', iconUrl)
          ..add('code', code))
        .toString();
  }
}

class ConditionModelBuilder
    implements Builder<ConditionModel, ConditionModelBuilder> {
  _$ConditionModel _$v;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _iconUrl;
  String get iconUrl => _$this._iconUrl;
  set iconUrl(String iconUrl) => _$this._iconUrl = iconUrl;

  int _code;
  int get code => _$this._code;
  set code(int code) => _$this._code = code;

  ConditionModelBuilder();

  ConditionModelBuilder get _$this {
    if (_$v != null) {
      _description = _$v.description;
      _iconUrl = _$v.iconUrl;
      _code = _$v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConditionModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ConditionModel;
  }

  @override
  void update(void Function(ConditionModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ConditionModel build() {
    final _$result = _$v ??
        new _$ConditionModel._(
            description: description, iconUrl: iconUrl, code: code);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

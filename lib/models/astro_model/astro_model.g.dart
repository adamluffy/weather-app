// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'astro_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AstroModel> _$astroModelSerializer = new _$AstroModelSerializer();

class _$AstroModelSerializer implements StructuredSerializer<AstroModel> {
  @override
  final Iterable<Type> types = const [AstroModel, _$AstroModel];
  @override
  final String wireName = 'AstroModel';

  @override
  Iterable<Object> serialize(Serializers serializers, AstroModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'sunrise',
      serializers.serialize(object.sunRise,
          specifiedType: const FullType(String)),
      'sunset',
      serializers.serialize(object.sunSet,
          specifiedType: const FullType(String)),
      'moonrise',
      serializers.serialize(object.moonRise,
          specifiedType: const FullType(String)),
      'moonset',
      serializers.serialize(object.moonSet,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  AstroModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AstroModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'sunrise':
          result.sunRise = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sunset':
          result.sunSet = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'moonrise':
          result.moonRise = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'moonset':
          result.moonSet = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AstroModel extends AstroModel {
  @override
  final String sunRise;
  @override
  final String sunSet;
  @override
  final String moonRise;
  @override
  final String moonSet;

  factory _$AstroModel([void Function(AstroModelBuilder) updates]) =>
      (new AstroModelBuilder()..update(updates)).build();

  _$AstroModel._({this.sunRise, this.sunSet, this.moonRise, this.moonSet})
      : super._() {
    if (sunRise == null) {
      throw new BuiltValueNullFieldError('AstroModel', 'sunRise');
    }
    if (sunSet == null) {
      throw new BuiltValueNullFieldError('AstroModel', 'sunSet');
    }
    if (moonRise == null) {
      throw new BuiltValueNullFieldError('AstroModel', 'moonRise');
    }
    if (moonSet == null) {
      throw new BuiltValueNullFieldError('AstroModel', 'moonSet');
    }
  }

  @override
  AstroModel rebuild(void Function(AstroModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AstroModelBuilder toBuilder() => new AstroModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AstroModel &&
        sunRise == other.sunRise &&
        sunSet == other.sunSet &&
        moonRise == other.moonRise &&
        moonSet == other.moonSet;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, sunRise.hashCode), sunSet.hashCode), moonRise.hashCode),
        moonSet.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AstroModel')
          ..add('sunRise', sunRise)
          ..add('sunSet', sunSet)
          ..add('moonRise', moonRise)
          ..add('moonSet', moonSet))
        .toString();
  }
}

class AstroModelBuilder implements Builder<AstroModel, AstroModelBuilder> {
  _$AstroModel _$v;

  String _sunRise;
  String get sunRise => _$this._sunRise;
  set sunRise(String sunRise) => _$this._sunRise = sunRise;

  String _sunSet;
  String get sunSet => _$this._sunSet;
  set sunSet(String sunSet) => _$this._sunSet = sunSet;

  String _moonRise;
  String get moonRise => _$this._moonRise;
  set moonRise(String moonRise) => _$this._moonRise = moonRise;

  String _moonSet;
  String get moonSet => _$this._moonSet;
  set moonSet(String moonSet) => _$this._moonSet = moonSet;

  AstroModelBuilder();

  AstroModelBuilder get _$this {
    if (_$v != null) {
      _sunRise = _$v.sunRise;
      _sunSet = _$v.sunSet;
      _moonRise = _$v.moonRise;
      _moonSet = _$v.moonSet;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AstroModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AstroModel;
  }

  @override
  void update(void Function(AstroModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AstroModel build() {
    final _$result = _$v ??
        new _$AstroModel._(
            sunRise: sunRise,
            sunSet: sunSet,
            moonRise: moonRise,
            moonSet: moonSet);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_base_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CurrentWeatherBaseModel> _$currentWeatherBaseModelSerializer =
    new _$CurrentWeatherBaseModelSerializer();

class _$CurrentWeatherBaseModelSerializer
    implements StructuredSerializer<CurrentWeatherBaseModel> {
  @override
  final Iterable<Type> types = const [
    CurrentWeatherBaseModel,
    _$CurrentWeatherBaseModel
  ];
  @override
  final String wireName = 'CurrentWeatherBaseModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CurrentWeatherBaseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(LocationModel)),
      'current',
      serializers.serialize(object.currentWeather,
          specifiedType: const FullType(CurrentWeatherModel)),
    ];

    return result;
  }

  @override
  CurrentWeatherBaseModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrentWeatherBaseModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'location':
          result.location.replace(serializers.deserialize(value,
              specifiedType: const FullType(LocationModel)) as LocationModel);
          break;
        case 'current':
          result.currentWeather.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CurrentWeatherModel))
              as CurrentWeatherModel);
          break;
      }
    }

    return result.build();
  }
}

class _$CurrentWeatherBaseModel extends CurrentWeatherBaseModel {
  @override
  final LocationModel location;
  @override
  final CurrentWeatherModel currentWeather;

  factory _$CurrentWeatherBaseModel(
          [void Function(CurrentWeatherBaseModelBuilder) updates]) =>
      (new CurrentWeatherBaseModelBuilder()..update(updates)).build();

  _$CurrentWeatherBaseModel._({this.location, this.currentWeather})
      : super._() {
    if (location == null) {
      throw new BuiltValueNullFieldError('CurrentWeatherBaseModel', 'location');
    }
    if (currentWeather == null) {
      throw new BuiltValueNullFieldError(
          'CurrentWeatherBaseModel', 'currentWeather');
    }
  }

  @override
  CurrentWeatherBaseModel rebuild(
          void Function(CurrentWeatherBaseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrentWeatherBaseModelBuilder toBuilder() =>
      new CurrentWeatherBaseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CurrentWeatherBaseModel &&
        location == other.location &&
        currentWeather == other.currentWeather;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, location.hashCode), currentWeather.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CurrentWeatherBaseModel')
          ..add('location', location)
          ..add('currentWeather', currentWeather))
        .toString();
  }
}

class CurrentWeatherBaseModelBuilder
    implements
        Builder<CurrentWeatherBaseModel, CurrentWeatherBaseModelBuilder> {
  _$CurrentWeatherBaseModel _$v;

  LocationModelBuilder _location;
  LocationModelBuilder get location =>
      _$this._location ??= new LocationModelBuilder();
  set location(LocationModelBuilder location) => _$this._location = location;

  CurrentWeatherModelBuilder _currentWeather;
  CurrentWeatherModelBuilder get currentWeather =>
      _$this._currentWeather ??= new CurrentWeatherModelBuilder();
  set currentWeather(CurrentWeatherModelBuilder currentWeather) =>
      _$this._currentWeather = currentWeather;

  CurrentWeatherBaseModelBuilder();

  CurrentWeatherBaseModelBuilder get _$this {
    if (_$v != null) {
      _location = _$v.location?.toBuilder();
      _currentWeather = _$v.currentWeather?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CurrentWeatherBaseModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CurrentWeatherBaseModel;
  }

  @override
  void update(void Function(CurrentWeatherBaseModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CurrentWeatherBaseModel build() {
    _$CurrentWeatherBaseModel _$result;
    try {
      _$result = _$v ??
          new _$CurrentWeatherBaseModel._(
              location: location.build(),
              currentWeather: currentWeather.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'location';
        location.build();
        _$failedField = 'currentWeather';
        currentWeather.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CurrentWeatherBaseModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

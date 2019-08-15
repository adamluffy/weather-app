// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_root_base_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ForecastRootBaseModel> _$forecastRootBaseModelSerializer =
    new _$ForecastRootBaseModelSerializer();

class _$ForecastRootBaseModelSerializer
    implements StructuredSerializer<ForecastRootBaseModel> {
  @override
  final Iterable<Type> types = const [
    ForecastRootBaseModel,
    _$ForecastRootBaseModel
  ];
  @override
  final String wireName = 'ForecastRootBaseModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ForecastRootBaseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(LocationModel)),
      'current',
      serializers.serialize(object.currentWeather,
          specifiedType: const FullType(CurrentWeatherModel)),
      'forecast',
      serializers.serialize(object.forecast,
          specifiedType: const FullType(ForecastBaseModel)),
    ];

    return result;
  }

  @override
  ForecastRootBaseModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ForecastRootBaseModelBuilder();

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
        case 'forecast':
          result.forecast.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ForecastBaseModel))
              as ForecastBaseModel);
          break;
      }
    }

    return result.build();
  }
}

class _$ForecastRootBaseModel extends ForecastRootBaseModel {
  @override
  final LocationModel location;
  @override
  final CurrentWeatherModel currentWeather;
  @override
  final ForecastBaseModel forecast;

  factory _$ForecastRootBaseModel(
          [void Function(ForecastRootBaseModelBuilder) updates]) =>
      (new ForecastRootBaseModelBuilder()..update(updates)).build();

  _$ForecastRootBaseModel._({this.location, this.currentWeather, this.forecast})
      : super._() {
    if (location == null) {
      throw new BuiltValueNullFieldError('ForecastRootBaseModel', 'location');
    }
    if (currentWeather == null) {
      throw new BuiltValueNullFieldError(
          'ForecastRootBaseModel', 'currentWeather');
    }
    if (forecast == null) {
      throw new BuiltValueNullFieldError('ForecastRootBaseModel', 'forecast');
    }
  }

  @override
  ForecastRootBaseModel rebuild(
          void Function(ForecastRootBaseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastRootBaseModelBuilder toBuilder() =>
      new ForecastRootBaseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastRootBaseModel &&
        location == other.location &&
        currentWeather == other.currentWeather &&
        forecast == other.forecast;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, location.hashCode), currentWeather.hashCode),
        forecast.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ForecastRootBaseModel')
          ..add('location', location)
          ..add('currentWeather', currentWeather)
          ..add('forecast', forecast))
        .toString();
  }
}

class ForecastRootBaseModelBuilder
    implements Builder<ForecastRootBaseModel, ForecastRootBaseModelBuilder> {
  _$ForecastRootBaseModel _$v;

  LocationModelBuilder _location;
  LocationModelBuilder get location =>
      _$this._location ??= new LocationModelBuilder();
  set location(LocationModelBuilder location) => _$this._location = location;

  CurrentWeatherModelBuilder _currentWeather;
  CurrentWeatherModelBuilder get currentWeather =>
      _$this._currentWeather ??= new CurrentWeatherModelBuilder();
  set currentWeather(CurrentWeatherModelBuilder currentWeather) =>
      _$this._currentWeather = currentWeather;

  ForecastBaseModelBuilder _forecast;
  ForecastBaseModelBuilder get forecast =>
      _$this._forecast ??= new ForecastBaseModelBuilder();
  set forecast(ForecastBaseModelBuilder forecast) =>
      _$this._forecast = forecast;

  ForecastRootBaseModelBuilder();

  ForecastRootBaseModelBuilder get _$this {
    if (_$v != null) {
      _location = _$v.location?.toBuilder();
      _currentWeather = _$v.currentWeather?.toBuilder();
      _forecast = _$v.forecast?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastRootBaseModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ForecastRootBaseModel;
  }

  @override
  void update(void Function(ForecastRootBaseModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ForecastRootBaseModel build() {
    _$ForecastRootBaseModel _$result;
    try {
      _$result = _$v ??
          new _$ForecastRootBaseModel._(
              location: location.build(),
              currentWeather: currentWeather.build(),
              forecast: forecast.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'location';
        location.build();
        _$failedField = 'currentWeather';
        currentWeather.build();
        _$failedField = 'forecast';
        forecast.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ForecastRootBaseModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

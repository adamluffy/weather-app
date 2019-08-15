// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocationModel> _$locationModelSerializer =
    new _$LocationModelSerializer();

class _$LocationModelSerializer implements StructuredSerializer<LocationModel> {
  @override
  final Iterable<Type> types = const [LocationModel, _$LocationModel];
  @override
  final String wireName = 'LocationModel';

  @override
  Iterable<Object> serialize(Serializers serializers, LocationModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'region',
      serializers.serialize(object.region,
          specifiedType: const FullType(String)),
      'country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'lat',
      serializers.serialize(object.latitutde,
          specifiedType: const FullType(double)),
      'lon',
      serializers.serialize(object.longtitude,
          specifiedType: const FullType(double)),
      'tz_id',
      serializers.serialize(object.timeZoneId,
          specifiedType: const FullType(String)),
      'localtime_epoch',
      serializers.serialize(object.localTimeTimeSpan,
          specifiedType: const FullType(int)),
      'localtime',
      serializers.serialize(object.localTime,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  LocationModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'region':
          result.region = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lat':
          result.latitutde = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'lon':
          result.longtitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'tz_id':
          result.timeZoneId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'localtime_epoch':
          result.localTimeTimeSpan = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'localtime':
          result.localTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LocationModel extends LocationModel {
  @override
  final String name;
  @override
  final String region;
  @override
  final String country;
  @override
  final double latitutde;
  @override
  final double longtitude;
  @override
  final String timeZoneId;
  @override
  final int localTimeTimeSpan;
  @override
  final String localTime;

  factory _$LocationModel([void Function(LocationModelBuilder) updates]) =>
      (new LocationModelBuilder()..update(updates)).build();

  _$LocationModel._(
      {this.name,
      this.region,
      this.country,
      this.latitutde,
      this.longtitude,
      this.timeZoneId,
      this.localTimeTimeSpan,
      this.localTime})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('LocationModel', 'name');
    }
    if (region == null) {
      throw new BuiltValueNullFieldError('LocationModel', 'region');
    }
    if (country == null) {
      throw new BuiltValueNullFieldError('LocationModel', 'country');
    }
    if (latitutde == null) {
      throw new BuiltValueNullFieldError('LocationModel', 'latitutde');
    }
    if (longtitude == null) {
      throw new BuiltValueNullFieldError('LocationModel', 'longtitude');
    }
    if (timeZoneId == null) {
      throw new BuiltValueNullFieldError('LocationModel', 'timeZoneId');
    }
    if (localTimeTimeSpan == null) {
      throw new BuiltValueNullFieldError('LocationModel', 'localTimeTimeSpan');
    }
    if (localTime == null) {
      throw new BuiltValueNullFieldError('LocationModel', 'localTime');
    }
  }

  @override
  LocationModel rebuild(void Function(LocationModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationModelBuilder toBuilder() => new LocationModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocationModel &&
        name == other.name &&
        region == other.region &&
        country == other.country &&
        latitutde == other.latitutde &&
        longtitude == other.longtitude &&
        timeZoneId == other.timeZoneId &&
        localTimeTimeSpan == other.localTimeTimeSpan &&
        localTime == other.localTime;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, name.hashCode), region.hashCode),
                            country.hashCode),
                        latitutde.hashCode),
                    longtitude.hashCode),
                timeZoneId.hashCode),
            localTimeTimeSpan.hashCode),
        localTime.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LocationModel')
          ..add('name', name)
          ..add('region', region)
          ..add('country', country)
          ..add('latitutde', latitutde)
          ..add('longtitude', longtitude)
          ..add('timeZoneId', timeZoneId)
          ..add('localTimeTimeSpan', localTimeTimeSpan)
          ..add('localTime', localTime))
        .toString();
  }
}

class LocationModelBuilder
    implements Builder<LocationModel, LocationModelBuilder> {
  _$LocationModel _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _region;
  String get region => _$this._region;
  set region(String region) => _$this._region = region;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  double _latitutde;
  double get latitutde => _$this._latitutde;
  set latitutde(double latitutde) => _$this._latitutde = latitutde;

  double _longtitude;
  double get longtitude => _$this._longtitude;
  set longtitude(double longtitude) => _$this._longtitude = longtitude;

  String _timeZoneId;
  String get timeZoneId => _$this._timeZoneId;
  set timeZoneId(String timeZoneId) => _$this._timeZoneId = timeZoneId;

  int _localTimeTimeSpan;
  int get localTimeTimeSpan => _$this._localTimeTimeSpan;
  set localTimeTimeSpan(int localTimeTimeSpan) =>
      _$this._localTimeTimeSpan = localTimeTimeSpan;

  String _localTime;
  String get localTime => _$this._localTime;
  set localTime(String localTime) => _$this._localTime = localTime;

  LocationModelBuilder();

  LocationModelBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _region = _$v.region;
      _country = _$v.country;
      _latitutde = _$v.latitutde;
      _longtitude = _$v.longtitude;
      _timeZoneId = _$v.timeZoneId;
      _localTimeTimeSpan = _$v.localTimeTimeSpan;
      _localTime = _$v.localTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocationModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LocationModel;
  }

  @override
  void update(void Function(LocationModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LocationModel build() {
    final _$result = _$v ??
        new _$LocationModel._(
            name: name,
            region: region,
            country: country,
            latitutde: latitutde,
            longtitude: longtitude,
            timeZoneId: timeZoneId,
            localTimeTimeSpan: localTimeTimeSpan,
            localTime: localTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

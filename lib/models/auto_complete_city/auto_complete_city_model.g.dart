// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_complete_city_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AutoCompleteCityModel> _$autoCompleteCityModelSerializer =
    new _$AutoCompleteCityModelSerializer();

class _$AutoCompleteCityModelSerializer
    implements StructuredSerializer<AutoCompleteCityModel> {
  @override
  final Iterable<Type> types = const [
    AutoCompleteCityModel,
    _$AutoCompleteCityModel
  ];
  @override
  final String wireName = 'AutoCompleteCityModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, AutoCompleteCityModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'region',
      serializers.serialize(object.region,
          specifiedType: const FullType(String)),
      'country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'lat',
      serializers.serialize(object.latitude,
          specifiedType: const FullType(double)),
      'lon',
      serializers.serialize(object.longtitude,
          specifiedType: const FullType(double)),
      'url',
      serializers.serialize(object.cityUrl,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  AutoCompleteCityModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AutoCompleteCityModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
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
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'lon':
          result.longtitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'url':
          result.cityUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AutoCompleteCityModel extends AutoCompleteCityModel {
  @override
  final int id;
  @override
  final String name;
  @override
  final String region;
  @override
  final String country;
  @override
  final double latitude;
  @override
  final double longtitude;
  @override
  final String cityUrl;

  factory _$AutoCompleteCityModel(
          [void Function(AutoCompleteCityModelBuilder) updates]) =>
      (new AutoCompleteCityModelBuilder()..update(updates)).build();

  _$AutoCompleteCityModel._(
      {this.id,
      this.name,
      this.region,
      this.country,
      this.latitude,
      this.longtitude,
      this.cityUrl})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('AutoCompleteCityModel', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('AutoCompleteCityModel', 'name');
    }
    if (region == null) {
      throw new BuiltValueNullFieldError('AutoCompleteCityModel', 'region');
    }
    if (country == null) {
      throw new BuiltValueNullFieldError('AutoCompleteCityModel', 'country');
    }
    if (latitude == null) {
      throw new BuiltValueNullFieldError('AutoCompleteCityModel', 'latitude');
    }
    if (longtitude == null) {
      throw new BuiltValueNullFieldError('AutoCompleteCityModel', 'longtitude');
    }
    if (cityUrl == null) {
      throw new BuiltValueNullFieldError('AutoCompleteCityModel', 'cityUrl');
    }
  }

  @override
  AutoCompleteCityModel rebuild(
          void Function(AutoCompleteCityModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AutoCompleteCityModelBuilder toBuilder() =>
      new AutoCompleteCityModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AutoCompleteCityModel &&
        id == other.id &&
        name == other.name &&
        region == other.region &&
        country == other.country &&
        latitude == other.latitude &&
        longtitude == other.longtitude &&
        cityUrl == other.cityUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), name.hashCode),
                        region.hashCode),
                    country.hashCode),
                latitude.hashCode),
            longtitude.hashCode),
        cityUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AutoCompleteCityModel')
          ..add('id', id)
          ..add('name', name)
          ..add('region', region)
          ..add('country', country)
          ..add('latitude', latitude)
          ..add('longtitude', longtitude)
          ..add('cityUrl', cityUrl))
        .toString();
  }
}

class AutoCompleteCityModelBuilder
    implements Builder<AutoCompleteCityModel, AutoCompleteCityModelBuilder> {
  _$AutoCompleteCityModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _region;
  String get region => _$this._region;
  set region(String region) => _$this._region = region;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  double _latitude;
  double get latitude => _$this._latitude;
  set latitude(double latitude) => _$this._latitude = latitude;

  double _longtitude;
  double get longtitude => _$this._longtitude;
  set longtitude(double longtitude) => _$this._longtitude = longtitude;

  String _cityUrl;
  String get cityUrl => _$this._cityUrl;
  set cityUrl(String cityUrl) => _$this._cityUrl = cityUrl;

  AutoCompleteCityModelBuilder();

  AutoCompleteCityModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _region = _$v.region;
      _country = _$v.country;
      _latitude = _$v.latitude;
      _longtitude = _$v.longtitude;
      _cityUrl = _$v.cityUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AutoCompleteCityModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AutoCompleteCityModel;
  }

  @override
  void update(void Function(AutoCompleteCityModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AutoCompleteCityModel build() {
    final _$result = _$v ??
        new _$AutoCompleteCityModel._(
            id: id,
            name: name,
            region: region,
            country: country,
            latitude: latitude,
            longtitude: longtitude,
            cityUrl: cityUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

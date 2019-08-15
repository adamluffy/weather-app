// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CurrentWeatherModel> _$currentWeatherModelSerializer =
    new _$CurrentWeatherModelSerializer();

class _$CurrentWeatherModelSerializer
    implements StructuredSerializer<CurrentWeatherModel> {
  @override
  final Iterable<Type> types = const [
    CurrentWeatherModel,
    _$CurrentWeatherModel
  ];
  @override
  final String wireName = 'CurrentWeatherModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CurrentWeatherModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'last_updated_epoch',
      serializers.serialize(object.lastUpdateTimespan,
          specifiedType: const FullType(int)),
      'last_updated',
      serializers.serialize(object.lastUpdate,
          specifiedType: const FullType(String)),
      'temp_c',
      serializers.serialize(object.tempC,
          specifiedType: const FullType(double)),
      'temp_f',
      serializers.serialize(object.tempF,
          specifiedType: const FullType(double)),
      'is_day',
      serializers.serialize(object.isDay, specifiedType: const FullType(int)),
      'condition',
      serializers.serialize(object.condition,
          specifiedType: const FullType(ConditionModel)),
      'wind_mph',
      serializers.serialize(object.windMph,
          specifiedType: const FullType(double)),
      'wind_kph',
      serializers.serialize(object.windKph,
          specifiedType: const FullType(double)),
      'wind_degree',
      serializers.serialize(object.indDegree,
          specifiedType: const FullType(double)),
      'wind_dir',
      serializers.serialize(object.windDir,
          specifiedType: const FullType(String)),
      'pressure_mb',
      serializers.serialize(object.pressureMb,
          specifiedType: const FullType(double)),
      'pressure_in',
      serializers.serialize(object.pressureIn,
          specifiedType: const FullType(double)),
      'precip_mm',
      serializers.serialize(object.precipMm,
          specifiedType: const FullType(double)),
      'precip_in',
      serializers.serialize(object.precipIn,
          specifiedType: const FullType(double)),
      'humidity',
      serializers.serialize(object.humidity,
          specifiedType: const FullType(double)),
      'cloud',
      serializers.serialize(object.cloud,
          specifiedType: const FullType(double)),
      'feelslike_c',
      serializers.serialize(object.feelTempC,
          specifiedType: const FullType(double)),
      'feelslike_f',
      serializers.serialize(object.feelTempF,
          specifiedType: const FullType(double)),
      'vis_km',
      serializers.serialize(object.visKm,
          specifiedType: const FullType(double)),
      'vis_miles',
      serializers.serialize(object.visMiles,
          specifiedType: const FullType(double)),
      'uv',
      serializers.serialize(object.uv, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  CurrentWeatherModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrentWeatherModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'last_updated_epoch':
          result.lastUpdateTimespan = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'last_updated':
          result.lastUpdate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'temp_c':
          result.tempC = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'temp_f':
          result.tempF = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'is_day':
          result.isDay = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'condition':
          result.condition.replace(serializers.deserialize(value,
              specifiedType: const FullType(ConditionModel)) as ConditionModel);
          break;
        case 'wind_mph':
          result.windMph = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'wind_kph':
          result.windKph = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'wind_degree':
          result.indDegree = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'wind_dir':
          result.windDir = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pressure_mb':
          result.pressureMb = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'pressure_in':
          result.pressureIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'precip_mm':
          result.precipMm = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'precip_in':
          result.precipIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'cloud':
          result.cloud = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'feelslike_c':
          result.feelTempC = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'feelslike_f':
          result.feelTempF = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'vis_km':
          result.visKm = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'vis_miles':
          result.visMiles = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'uv':
          result.uv = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$CurrentWeatherModel extends CurrentWeatherModel {
  @override
  final int lastUpdateTimespan;
  @override
  final String lastUpdate;
  @override
  final double tempC;
  @override
  final double tempF;
  @override
  final int isDay;
  @override
  final ConditionModel condition;
  @override
  final double windMph;
  @override
  final double windKph;
  @override
  final double indDegree;
  @override
  final String windDir;
  @override
  final double pressureMb;
  @override
  final double pressureIn;
  @override
  final double precipMm;
  @override
  final double precipIn;
  @override
  final double humidity;
  @override
  final double cloud;
  @override
  final double feelTempC;
  @override
  final double feelTempF;
  @override
  final double visKm;
  @override
  final double visMiles;
  @override
  final double uv;

  factory _$CurrentWeatherModel(
          [void Function(CurrentWeatherModelBuilder) updates]) =>
      (new CurrentWeatherModelBuilder()..update(updates)).build();

  _$CurrentWeatherModel._(
      {this.lastUpdateTimespan,
      this.lastUpdate,
      this.tempC,
      this.tempF,
      this.isDay,
      this.condition,
      this.windMph,
      this.windKph,
      this.indDegree,
      this.windDir,
      this.pressureMb,
      this.pressureIn,
      this.precipMm,
      this.precipIn,
      this.humidity,
      this.cloud,
      this.feelTempC,
      this.feelTempF,
      this.visKm,
      this.visMiles,
      this.uv})
      : super._() {
    if (lastUpdateTimespan == null) {
      throw new BuiltValueNullFieldError(
          'CurrentWeatherModel', 'lastUpdateTimespan');
    }
    if (lastUpdate == null) {
      throw new BuiltValueNullFieldError('CurrentWeatherModel', 'lastUpdate');
    }
    if (tempC == null) {
      throw new BuiltValueNullFieldError('CurrentWeatherModel', 'tempC');
    }
    if (tempF == null) {
      throw new BuiltValueNullFieldError('CurrentWeatherModel', 'tempF');
    }
    if (isDay == null) {
      throw new BuiltValueNullFieldError('CurrentWeatherModel', 'isDay');
    }
    if (condition == null) {
      throw new BuiltValueNullFieldError('CurrentWeatherModel', 'condition');
    }
    if (windMph == null) {
      throw new BuiltValueNullFieldError('CurrentWeatherModel', 'windMph');
    }
    if (windKph == null) {
      throw new BuiltValueNullFieldError('CurrentWeatherModel', 'windKph');
    }
    if (indDegree == null) {
      throw new BuiltValueNullFieldError('CurrentWeatherModel', 'indDegree');
    }
    if (windDir == null) {
      throw new BuiltValueNullFieldError('CurrentWeatherModel', 'windDir');
    }
    if (pressureMb == null) {
      throw new BuiltValueNullFieldError('CurrentWeatherModel', 'pressureMb');
    }
    if (pressureIn == null) {
      throw new BuiltValueNullFieldError('CurrentWeatherModel', 'pressureIn');
    }
    if (precipMm == null) {
      throw new BuiltValueNullFieldError('CurrentWeatherModel', 'precipMm');
    }
    if (precipIn == null) {
      throw new BuiltValueNullFieldError('CurrentWeatherModel', 'precipIn');
    }
    if (humidity == null) {
      throw new BuiltValueNullFieldError('CurrentWeatherModel', 'humidity');
    }
    if (cloud == null) {
      throw new BuiltValueNullFieldError('CurrentWeatherModel', 'cloud');
    }
    if (feelTempC == null) {
      throw new BuiltValueNullFieldError('CurrentWeatherModel', 'feelTempC');
    }
    if (feelTempF == null) {
      throw new BuiltValueNullFieldError('CurrentWeatherModel', 'feelTempF');
    }
    if (visKm == null) {
      throw new BuiltValueNullFieldError('CurrentWeatherModel', 'visKm');
    }
    if (visMiles == null) {
      throw new BuiltValueNullFieldError('CurrentWeatherModel', 'visMiles');
    }
    if (uv == null) {
      throw new BuiltValueNullFieldError('CurrentWeatherModel', 'uv');
    }
  }

  @override
  CurrentWeatherModel rebuild(
          void Function(CurrentWeatherModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrentWeatherModelBuilder toBuilder() =>
      new CurrentWeatherModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CurrentWeatherModel &&
        lastUpdateTimespan == other.lastUpdateTimespan &&
        lastUpdate == other.lastUpdate &&
        tempC == other.tempC &&
        tempF == other.tempF &&
        isDay == other.isDay &&
        condition == other.condition &&
        windMph == other.windMph &&
        windKph == other.windKph &&
        indDegree == other.indDegree &&
        windDir == other.windDir &&
        pressureMb == other.pressureMb &&
        pressureIn == other.pressureIn &&
        precipMm == other.precipMm &&
        precipIn == other.precipIn &&
        humidity == other.humidity &&
        cloud == other.cloud &&
        feelTempC == other.feelTempC &&
        feelTempF == other.feelTempF &&
        visKm == other.visKm &&
        visMiles == other.visMiles &&
        uv == other.uv;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc(0, lastUpdateTimespan.hashCode), lastUpdate.hashCode),
                                                                                tempC.hashCode),
                                                                            tempF.hashCode),
                                                                        isDay.hashCode),
                                                                    condition.hashCode),
                                                                windMph.hashCode),
                                                            windKph.hashCode),
                                                        indDegree.hashCode),
                                                    windDir.hashCode),
                                                pressureMb.hashCode),
                                            pressureIn.hashCode),
                                        precipMm.hashCode),
                                    precipIn.hashCode),
                                humidity.hashCode),
                            cloud.hashCode),
                        feelTempC.hashCode),
                    feelTempF.hashCode),
                visKm.hashCode),
            visMiles.hashCode),
        uv.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CurrentWeatherModel')
          ..add('lastUpdateTimespan', lastUpdateTimespan)
          ..add('lastUpdate', lastUpdate)
          ..add('tempC', tempC)
          ..add('tempF', tempF)
          ..add('isDay', isDay)
          ..add('condition', condition)
          ..add('windMph', windMph)
          ..add('windKph', windKph)
          ..add('indDegree', indDegree)
          ..add('windDir', windDir)
          ..add('pressureMb', pressureMb)
          ..add('pressureIn', pressureIn)
          ..add('precipMm', precipMm)
          ..add('precipIn', precipIn)
          ..add('humidity', humidity)
          ..add('cloud', cloud)
          ..add('feelTempC', feelTempC)
          ..add('feelTempF', feelTempF)
          ..add('visKm', visKm)
          ..add('visMiles', visMiles)
          ..add('uv', uv))
        .toString();
  }
}

class CurrentWeatherModelBuilder
    implements Builder<CurrentWeatherModel, CurrentWeatherModelBuilder> {
  _$CurrentWeatherModel _$v;

  int _lastUpdateTimespan;
  int get lastUpdateTimespan => _$this._lastUpdateTimespan;
  set lastUpdateTimespan(int lastUpdateTimespan) =>
      _$this._lastUpdateTimespan = lastUpdateTimespan;

  String _lastUpdate;
  String get lastUpdate => _$this._lastUpdate;
  set lastUpdate(String lastUpdate) => _$this._lastUpdate = lastUpdate;

  double _tempC;
  double get tempC => _$this._tempC;
  set tempC(double tempC) => _$this._tempC = tempC;

  double _tempF;
  double get tempF => _$this._tempF;
  set tempF(double tempF) => _$this._tempF = tempF;

  int _isDay;
  int get isDay => _$this._isDay;
  set isDay(int isDay) => _$this._isDay = isDay;

  ConditionModelBuilder _condition;
  ConditionModelBuilder get condition =>
      _$this._condition ??= new ConditionModelBuilder();
  set condition(ConditionModelBuilder condition) =>
      _$this._condition = condition;

  double _windMph;
  double get windMph => _$this._windMph;
  set windMph(double windMph) => _$this._windMph = windMph;

  double _windKph;
  double get windKph => _$this._windKph;
  set windKph(double windKph) => _$this._windKph = windKph;

  double _indDegree;
  double get indDegree => _$this._indDegree;
  set indDegree(double indDegree) => _$this._indDegree = indDegree;

  String _windDir;
  String get windDir => _$this._windDir;
  set windDir(String windDir) => _$this._windDir = windDir;

  double _pressureMb;
  double get pressureMb => _$this._pressureMb;
  set pressureMb(double pressureMb) => _$this._pressureMb = pressureMb;

  double _pressureIn;
  double get pressureIn => _$this._pressureIn;
  set pressureIn(double pressureIn) => _$this._pressureIn = pressureIn;

  double _precipMm;
  double get precipMm => _$this._precipMm;
  set precipMm(double precipMm) => _$this._precipMm = precipMm;

  double _precipIn;
  double get precipIn => _$this._precipIn;
  set precipIn(double precipIn) => _$this._precipIn = precipIn;

  double _humidity;
  double get humidity => _$this._humidity;
  set humidity(double humidity) => _$this._humidity = humidity;

  double _cloud;
  double get cloud => _$this._cloud;
  set cloud(double cloud) => _$this._cloud = cloud;

  double _feelTempC;
  double get feelTempC => _$this._feelTempC;
  set feelTempC(double feelTempC) => _$this._feelTempC = feelTempC;

  double _feelTempF;
  double get feelTempF => _$this._feelTempF;
  set feelTempF(double feelTempF) => _$this._feelTempF = feelTempF;

  double _visKm;
  double get visKm => _$this._visKm;
  set visKm(double visKm) => _$this._visKm = visKm;

  double _visMiles;
  double get visMiles => _$this._visMiles;
  set visMiles(double visMiles) => _$this._visMiles = visMiles;

  double _uv;
  double get uv => _$this._uv;
  set uv(double uv) => _$this._uv = uv;

  CurrentWeatherModelBuilder();

  CurrentWeatherModelBuilder get _$this {
    if (_$v != null) {
      _lastUpdateTimespan = _$v.lastUpdateTimespan;
      _lastUpdate = _$v.lastUpdate;
      _tempC = _$v.tempC;
      _tempF = _$v.tempF;
      _isDay = _$v.isDay;
      _condition = _$v.condition?.toBuilder();
      _windMph = _$v.windMph;
      _windKph = _$v.windKph;
      _indDegree = _$v.indDegree;
      _windDir = _$v.windDir;
      _pressureMb = _$v.pressureMb;
      _pressureIn = _$v.pressureIn;
      _precipMm = _$v.precipMm;
      _precipIn = _$v.precipIn;
      _humidity = _$v.humidity;
      _cloud = _$v.cloud;
      _feelTempC = _$v.feelTempC;
      _feelTempF = _$v.feelTempF;
      _visKm = _$v.visKm;
      _visMiles = _$v.visMiles;
      _uv = _$v.uv;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CurrentWeatherModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CurrentWeatherModel;
  }

  @override
  void update(void Function(CurrentWeatherModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CurrentWeatherModel build() {
    _$CurrentWeatherModel _$result;
    try {
      _$result = _$v ??
          new _$CurrentWeatherModel._(
              lastUpdateTimespan: lastUpdateTimespan,
              lastUpdate: lastUpdate,
              tempC: tempC,
              tempF: tempF,
              isDay: isDay,
              condition: condition.build(),
              windMph: windMph,
              windKph: windKph,
              indDegree: indDegree,
              windDir: windDir,
              pressureMb: pressureMb,
              pressureIn: pressureIn,
              precipMm: precipMm,
              precipIn: precipIn,
              humidity: humidity,
              cloud: cloud,
              feelTempC: feelTempC,
              feelTempF: feelTempF,
              visKm: visKm,
              visMiles: visMiles,
              uv: uv);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'condition';
        condition.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CurrentWeatherModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

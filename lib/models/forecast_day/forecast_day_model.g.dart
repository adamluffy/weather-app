// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_day_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ForecastDayModel> _$forecastDayModelSerializer =
    new _$ForecastDayModelSerializer();

class _$ForecastDayModelSerializer
    implements StructuredSerializer<ForecastDayModel> {
  @override
  final Iterable<Type> types = const [ForecastDayModel, _$ForecastDayModel];
  @override
  final String wireName = 'ForecastDayModel';

  @override
  Iterable<Object> serialize(Serializers serializers, ForecastDayModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'maxtemp_c',
      serializers.serialize(object.maxTempC,
          specifiedType: const FullType(double)),
      'maxtemp_f',
      serializers.serialize(object.maxTempF,
          specifiedType: const FullType(double)),
      'mintemp_c',
      serializers.serialize(object.minTempC,
          specifiedType: const FullType(double)),
      'mintemp_f',
      serializers.serialize(object.minTempF,
          specifiedType: const FullType(double)),
      'avgtemp_c',
      serializers.serialize(object.averageTempC,
          specifiedType: const FullType(double)),
      'avgtemp_f',
      serializers.serialize(object.averageTempF,
          specifiedType: const FullType(double)),
      'maxwind_mph',
      serializers.serialize(object.maxWindMph,
          specifiedType: const FullType(double)),
      'maxwind_kph',
      serializers.serialize(object.maxWindKph,
          specifiedType: const FullType(double)),
      'totalprecip_mm',
      serializers.serialize(object.precipMm,
          specifiedType: const FullType(double)),
      'totalprecip_in',
      serializers.serialize(object.precipIn,
          specifiedType: const FullType(double)),
      'avgvis_km',
      serializers.serialize(object.visKm,
          specifiedType: const FullType(double)),
      'avgvis_miles',
      serializers.serialize(object.visMiles,
          specifiedType: const FullType(double)),
      'avghumidity',
      serializers.serialize(object.humidity,
          specifiedType: const FullType(double)),
      'condition',
      serializers.serialize(object.condition,
          specifiedType: const FullType(ConditionModel)),
      'uv',
      serializers.serialize(object.uv, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  ForecastDayModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ForecastDayModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'maxtemp_c':
          result.maxTempC = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'maxtemp_f':
          result.maxTempF = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'mintemp_c':
          result.minTempC = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'mintemp_f':
          result.minTempF = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'avgtemp_c':
          result.averageTempC = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'avgtemp_f':
          result.averageTempF = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'maxwind_mph':
          result.maxWindMph = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'maxwind_kph':
          result.maxWindKph = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'totalprecip_mm':
          result.precipMm = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'totalprecip_in':
          result.precipIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'avgvis_km':
          result.visKm = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'avgvis_miles':
          result.visMiles = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'avghumidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'condition':
          result.condition.replace(serializers.deserialize(value,
              specifiedType: const FullType(ConditionModel)) as ConditionModel);
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

class _$ForecastDayModel extends ForecastDayModel {
  @override
  final double maxTempC;
  @override
  final double maxTempF;
  @override
  final double minTempC;
  @override
  final double minTempF;
  @override
  final double averageTempC;
  @override
  final double averageTempF;
  @override
  final double maxWindMph;
  @override
  final double maxWindKph;
  @override
  final double precipMm;
  @override
  final double precipIn;
  @override
  final double visKm;
  @override
  final double visMiles;
  @override
  final double humidity;
  @override
  final ConditionModel condition;
  @override
  final double uv;

  factory _$ForecastDayModel(
          [void Function(ForecastDayModelBuilder) updates]) =>
      (new ForecastDayModelBuilder()..update(updates)).build();

  _$ForecastDayModel._(
      {this.maxTempC,
      this.maxTempF,
      this.minTempC,
      this.minTempF,
      this.averageTempC,
      this.averageTempF,
      this.maxWindMph,
      this.maxWindKph,
      this.precipMm,
      this.precipIn,
      this.visKm,
      this.visMiles,
      this.humidity,
      this.condition,
      this.uv})
      : super._() {
    if (maxTempC == null) {
      throw new BuiltValueNullFieldError('ForecastDayModel', 'maxTempC');
    }
    if (maxTempF == null) {
      throw new BuiltValueNullFieldError('ForecastDayModel', 'maxTempF');
    }
    if (minTempC == null) {
      throw new BuiltValueNullFieldError('ForecastDayModel', 'minTempC');
    }
    if (minTempF == null) {
      throw new BuiltValueNullFieldError('ForecastDayModel', 'minTempF');
    }
    if (averageTempC == null) {
      throw new BuiltValueNullFieldError('ForecastDayModel', 'averageTempC');
    }
    if (averageTempF == null) {
      throw new BuiltValueNullFieldError('ForecastDayModel', 'averageTempF');
    }
    if (maxWindMph == null) {
      throw new BuiltValueNullFieldError('ForecastDayModel', 'maxWindMph');
    }
    if (maxWindKph == null) {
      throw new BuiltValueNullFieldError('ForecastDayModel', 'maxWindKph');
    }
    if (precipMm == null) {
      throw new BuiltValueNullFieldError('ForecastDayModel', 'precipMm');
    }
    if (precipIn == null) {
      throw new BuiltValueNullFieldError('ForecastDayModel', 'precipIn');
    }
    if (visKm == null) {
      throw new BuiltValueNullFieldError('ForecastDayModel', 'visKm');
    }
    if (visMiles == null) {
      throw new BuiltValueNullFieldError('ForecastDayModel', 'visMiles');
    }
    if (humidity == null) {
      throw new BuiltValueNullFieldError('ForecastDayModel', 'humidity');
    }
    if (condition == null) {
      throw new BuiltValueNullFieldError('ForecastDayModel', 'condition');
    }
    if (uv == null) {
      throw new BuiltValueNullFieldError('ForecastDayModel', 'uv');
    }
  }

  @override
  ForecastDayModel rebuild(void Function(ForecastDayModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastDayModelBuilder toBuilder() =>
      new ForecastDayModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastDayModel &&
        maxTempC == other.maxTempC &&
        maxTempF == other.maxTempF &&
        minTempC == other.minTempC &&
        minTempF == other.minTempF &&
        averageTempC == other.averageTempC &&
        averageTempF == other.averageTempF &&
        maxWindMph == other.maxWindMph &&
        maxWindKph == other.maxWindKph &&
        precipMm == other.precipMm &&
        precipIn == other.precipIn &&
        visKm == other.visKm &&
        visMiles == other.visMiles &&
        humidity == other.humidity &&
        condition == other.condition &&
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
                                                                0,
                                                                maxTempC
                                                                    .hashCode),
                                                            maxTempF.hashCode),
                                                        minTempC.hashCode),
                                                    minTempF.hashCode),
                                                averageTempC.hashCode),
                                            averageTempF.hashCode),
                                        maxWindMph.hashCode),
                                    maxWindKph.hashCode),
                                precipMm.hashCode),
                            precipIn.hashCode),
                        visKm.hashCode),
                    visMiles.hashCode),
                humidity.hashCode),
            condition.hashCode),
        uv.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ForecastDayModel')
          ..add('maxTempC', maxTempC)
          ..add('maxTempF', maxTempF)
          ..add('minTempC', minTempC)
          ..add('minTempF', minTempF)
          ..add('averageTempC', averageTempC)
          ..add('averageTempF', averageTempF)
          ..add('maxWindMph', maxWindMph)
          ..add('maxWindKph', maxWindKph)
          ..add('precipMm', precipMm)
          ..add('precipIn', precipIn)
          ..add('visKm', visKm)
          ..add('visMiles', visMiles)
          ..add('humidity', humidity)
          ..add('condition', condition)
          ..add('uv', uv))
        .toString();
  }
}

class ForecastDayModelBuilder
    implements Builder<ForecastDayModel, ForecastDayModelBuilder> {
  _$ForecastDayModel _$v;

  double _maxTempC;
  double get maxTempC => _$this._maxTempC;
  set maxTempC(double maxTempC) => _$this._maxTempC = maxTempC;

  double _maxTempF;
  double get maxTempF => _$this._maxTempF;
  set maxTempF(double maxTempF) => _$this._maxTempF = maxTempF;

  double _minTempC;
  double get minTempC => _$this._minTempC;
  set minTempC(double minTempC) => _$this._minTempC = minTempC;

  double _minTempF;
  double get minTempF => _$this._minTempF;
  set minTempF(double minTempF) => _$this._minTempF = minTempF;

  double _averageTempC;
  double get averageTempC => _$this._averageTempC;
  set averageTempC(double averageTempC) => _$this._averageTempC = averageTempC;

  double _averageTempF;
  double get averageTempF => _$this._averageTempF;
  set averageTempF(double averageTempF) => _$this._averageTempF = averageTempF;

  double _maxWindMph;
  double get maxWindMph => _$this._maxWindMph;
  set maxWindMph(double maxWindMph) => _$this._maxWindMph = maxWindMph;

  double _maxWindKph;
  double get maxWindKph => _$this._maxWindKph;
  set maxWindKph(double maxWindKph) => _$this._maxWindKph = maxWindKph;

  double _precipMm;
  double get precipMm => _$this._precipMm;
  set precipMm(double precipMm) => _$this._precipMm = precipMm;

  double _precipIn;
  double get precipIn => _$this._precipIn;
  set precipIn(double precipIn) => _$this._precipIn = precipIn;

  double _visKm;
  double get visKm => _$this._visKm;
  set visKm(double visKm) => _$this._visKm = visKm;

  double _visMiles;
  double get visMiles => _$this._visMiles;
  set visMiles(double visMiles) => _$this._visMiles = visMiles;

  double _humidity;
  double get humidity => _$this._humidity;
  set humidity(double humidity) => _$this._humidity = humidity;

  ConditionModelBuilder _condition;
  ConditionModelBuilder get condition =>
      _$this._condition ??= new ConditionModelBuilder();
  set condition(ConditionModelBuilder condition) =>
      _$this._condition = condition;

  double _uv;
  double get uv => _$this._uv;
  set uv(double uv) => _$this._uv = uv;

  ForecastDayModelBuilder();

  ForecastDayModelBuilder get _$this {
    if (_$v != null) {
      _maxTempC = _$v.maxTempC;
      _maxTempF = _$v.maxTempF;
      _minTempC = _$v.minTempC;
      _minTempF = _$v.minTempF;
      _averageTempC = _$v.averageTempC;
      _averageTempF = _$v.averageTempF;
      _maxWindMph = _$v.maxWindMph;
      _maxWindKph = _$v.maxWindKph;
      _precipMm = _$v.precipMm;
      _precipIn = _$v.precipIn;
      _visKm = _$v.visKm;
      _visMiles = _$v.visMiles;
      _humidity = _$v.humidity;
      _condition = _$v.condition?.toBuilder();
      _uv = _$v.uv;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastDayModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ForecastDayModel;
  }

  @override
  void update(void Function(ForecastDayModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ForecastDayModel build() {
    _$ForecastDayModel _$result;
    try {
      _$result = _$v ??
          new _$ForecastDayModel._(
              maxTempC: maxTempC,
              maxTempF: maxTempF,
              minTempC: minTempC,
              minTempF: minTempF,
              averageTempC: averageTempC,
              averageTempF: averageTempF,
              maxWindMph: maxWindMph,
              maxWindKph: maxWindKph,
              precipMm: precipMm,
              precipIn: precipIn,
              visKm: visKm,
              visMiles: visMiles,
              humidity: humidity,
              condition: condition.build(),
              uv: uv);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'condition';
        condition.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ForecastDayModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

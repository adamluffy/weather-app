// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_day_base_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ForecastDayBaseModel> _$forecastDayBaseModelSerializer =
    new _$ForecastDayBaseModelSerializer();

class _$ForecastDayBaseModelSerializer
    implements StructuredSerializer<ForecastDayBaseModel> {
  @override
  final Iterable<Type> types = const [
    ForecastDayBaseModel,
    _$ForecastDayBaseModel
  ];
  @override
  final String wireName = 'ForecastDayBaseModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ForecastDayBaseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'date_epoch',
      serializers.serialize(object.dateTimestamp,
          specifiedType: const FullType(int)),
      'day',
      serializers.serialize(object.day,
          specifiedType: const FullType(ForecastDayModel)),
      'astro',
      serializers.serialize(object.astro,
          specifiedType: const FullType(AstroModel)),
    ];

    return result;
  }

  @override
  ForecastDayBaseModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ForecastDayBaseModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date_epoch':
          result.dateTimestamp = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'day':
          result.day.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ForecastDayModel))
              as ForecastDayModel);
          break;
        case 'astro':
          result.astro.replace(serializers.deserialize(value,
              specifiedType: const FullType(AstroModel)) as AstroModel);
          break;
      }
    }

    return result.build();
  }
}

class _$ForecastDayBaseModel extends ForecastDayBaseModel {
  @override
  final String date;
  @override
  final int dateTimestamp;
  @override
  final ForecastDayModel day;
  @override
  final AstroModel astro;

  factory _$ForecastDayBaseModel(
          [void Function(ForecastDayBaseModelBuilder) updates]) =>
      (new ForecastDayBaseModelBuilder()..update(updates)).build();

  _$ForecastDayBaseModel._(
      {this.date, this.dateTimestamp, this.day, this.astro})
      : super._() {
    if (date == null) {
      throw new BuiltValueNullFieldError('ForecastDayBaseModel', 'date');
    }
    if (dateTimestamp == null) {
      throw new BuiltValueNullFieldError(
          'ForecastDayBaseModel', 'dateTimestamp');
    }
    if (day == null) {
      throw new BuiltValueNullFieldError('ForecastDayBaseModel', 'day');
    }
    if (astro == null) {
      throw new BuiltValueNullFieldError('ForecastDayBaseModel', 'astro');
    }
  }

  @override
  ForecastDayBaseModel rebuild(
          void Function(ForecastDayBaseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastDayBaseModelBuilder toBuilder() =>
      new ForecastDayBaseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastDayBaseModel &&
        date == other.date &&
        dateTimestamp == other.dateTimestamp &&
        day == other.day &&
        astro == other.astro;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, date.hashCode), dateTimestamp.hashCode), day.hashCode),
        astro.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ForecastDayBaseModel')
          ..add('date', date)
          ..add('dateTimestamp', dateTimestamp)
          ..add('day', day)
          ..add('astro', astro))
        .toString();
  }
}

class ForecastDayBaseModelBuilder
    implements Builder<ForecastDayBaseModel, ForecastDayBaseModelBuilder> {
  _$ForecastDayBaseModel _$v;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  int _dateTimestamp;
  int get dateTimestamp => _$this._dateTimestamp;
  set dateTimestamp(int dateTimestamp) => _$this._dateTimestamp = dateTimestamp;

  ForecastDayModelBuilder _day;
  ForecastDayModelBuilder get day =>
      _$this._day ??= new ForecastDayModelBuilder();
  set day(ForecastDayModelBuilder day) => _$this._day = day;

  AstroModelBuilder _astro;
  AstroModelBuilder get astro => _$this._astro ??= new AstroModelBuilder();
  set astro(AstroModelBuilder astro) => _$this._astro = astro;

  ForecastDayBaseModelBuilder();

  ForecastDayBaseModelBuilder get _$this {
    if (_$v != null) {
      _date = _$v.date;
      _dateTimestamp = _$v.dateTimestamp;
      _day = _$v.day?.toBuilder();
      _astro = _$v.astro?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastDayBaseModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ForecastDayBaseModel;
  }

  @override
  void update(void Function(ForecastDayBaseModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ForecastDayBaseModel build() {
    _$ForecastDayBaseModel _$result;
    try {
      _$result = _$v ??
          new _$ForecastDayBaseModel._(
              date: date,
              dateTimestamp: dateTimestamp,
              day: day.build(),
              astro: astro.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'day';
        day.build();
        _$failedField = 'astro';
        astro.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ForecastDayBaseModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

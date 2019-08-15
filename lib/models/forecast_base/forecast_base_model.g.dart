// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_base_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ForecastBaseModel> _$forecastBaseModelSerializer =
    new _$ForecastBaseModelSerializer();

class _$ForecastBaseModelSerializer
    implements StructuredSerializer<ForecastBaseModel> {
  @override
  final Iterable<Type> types = const [ForecastBaseModel, _$ForecastBaseModel];
  @override
  final String wireName = 'ForecastBaseModel';

  @override
  Iterable<Object> serialize(Serializers serializers, ForecastBaseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'forecastday',
      serializers.serialize(object.forecastDays,
          specifiedType: const FullType(
              BuiltList, const [const FullType(ForecastDayBaseModel)])),
    ];

    return result;
  }

  @override
  ForecastBaseModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ForecastBaseModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'forecastday':
          result.forecastDays.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ForecastDayBaseModel)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$ForecastBaseModel extends ForecastBaseModel {
  @override
  final BuiltList<ForecastDayBaseModel> forecastDays;

  factory _$ForecastBaseModel(
          [void Function(ForecastBaseModelBuilder) updates]) =>
      (new ForecastBaseModelBuilder()..update(updates)).build();

  _$ForecastBaseModel._({this.forecastDays}) : super._() {
    if (forecastDays == null) {
      throw new BuiltValueNullFieldError('ForecastBaseModel', 'forecastDays');
    }
  }

  @override
  ForecastBaseModel rebuild(void Function(ForecastBaseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastBaseModelBuilder toBuilder() =>
      new ForecastBaseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastBaseModel && forecastDays == other.forecastDays;
  }

  @override
  int get hashCode {
    return $jf($jc(0, forecastDays.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ForecastBaseModel')
          ..add('forecastDays', forecastDays))
        .toString();
  }
}

class ForecastBaseModelBuilder
    implements Builder<ForecastBaseModel, ForecastBaseModelBuilder> {
  _$ForecastBaseModel _$v;

  ListBuilder<ForecastDayBaseModel> _forecastDays;
  ListBuilder<ForecastDayBaseModel> get forecastDays =>
      _$this._forecastDays ??= new ListBuilder<ForecastDayBaseModel>();
  set forecastDays(ListBuilder<ForecastDayBaseModel> forecastDays) =>
      _$this._forecastDays = forecastDays;

  ForecastBaseModelBuilder();

  ForecastBaseModelBuilder get _$this {
    if (_$v != null) {
      _forecastDays = _$v.forecastDays?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastBaseModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ForecastBaseModel;
  }

  @override
  void update(void Function(ForecastBaseModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ForecastBaseModel build() {
    _$ForecastBaseModel _$result;
    try {
      _$result =
          _$v ?? new _$ForecastBaseModel._(forecastDays: forecastDays.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'forecastDays';
        forecastDays.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ForecastBaseModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

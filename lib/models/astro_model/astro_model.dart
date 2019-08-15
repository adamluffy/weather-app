import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'astro_model.g.dart';

abstract class AstroModel implements Built<AstroModel, AstroModelBuilder> {
  static Serializer<AstroModel> get serializer => _$astroModelSerializer;
  
  @BuiltValueField(wireName : "sunrise")
  String get sunRise;

  @BuiltValueField(wireName : "sunset")
  String get sunSet;

  @BuiltValueField(wireName : "moonrise")
  String get moonRise;

  @BuiltValueField(wireName : "moonset")
  String get moonSet;

  String get sunRise24H => _format12HourFormatTo24Hour(sunRise);
  String get sunSet24H => _format12HourFormatTo24Hour(sunSet);
  String get moonRise24H => _format12HourFormatTo24Hour(moonRise);
  String get moonSet24H => _format12HourFormatTo24Hour(moonSet);

  String _format12HourFormatTo24Hour(String input) {
    String time = input.substring(0, 5);
    List<int> times = time.split(':').map((t) => int.parse(t)).toList();
    return "${input.toLowerCase().contains("am") ? times.first : times.first+12}:${times[1]}";
  }

  AstroModel._();
  factory AstroModel([updates(AstroModelBuilder b)]) => _$AstroModel();
} 
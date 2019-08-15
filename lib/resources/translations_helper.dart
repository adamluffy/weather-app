import 'package:weatherapps/models/translate_base/translate_model_base.dart';
import 'package:weatherapps/resources/weather_api.dart';

class TranslationsHelper {
  TranslationsHelper(this.weatherApi);
  final WeatherApi weatherApi;
  
  List<TranslateBaseModel> _translations;
  bool areTranslationsAvailable = false;

  Future<bool> initialize() async {
    try {
      _translations = await weatherApi.fetchTranslations();
      return true;
    } catch (ex) {
      print(ex);
      return false;
    }
  }

  String translateConditionByCode(String languageKey, int conditionCode) {
    if(!areTranslationsAvailable) return null;
    
     var translation = _translations.firstWhere((x) => x.code == conditionCode);
    if(translation == null) return null;   
    String translatedCondition = translation?.day;
    return translatedCondition; 
  }
}
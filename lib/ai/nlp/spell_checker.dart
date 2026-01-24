import 'tflite_nlp_service.dart';

class SpellChecker {
  final TFLiteNlpService nlp;

  SpellChecker(this.nlp);

  String check(String text) {
    return nlp.correct(text);
  }
}

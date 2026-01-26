import 'package:flutter_tts/flutter_tts.dart';

class TextToSpeechService {
  final FlutterTts _tts = FlutterTts();

  TextToSpeechService() {
    _initialize();
  }

  void _initialize() async {
    await _tts.setLanguage("ar-SA");
    await _tts.setSpeechRate(0.4);
    await _tts.setPitch(1.0);
  }

  Future<void> speak(String text) async {
    await _tts.stop();
    await _tts.speak(text);
  }

  Future<void> stop() async {
    await _tts.stop();
  }
}

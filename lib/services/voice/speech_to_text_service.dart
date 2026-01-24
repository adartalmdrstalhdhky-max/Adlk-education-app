import 'package:speech_to_text/speech_to_text.dart';

class SpeechToTextService {
  final SpeechToText _speech = SpeechToText();
  bool _isAvailable = false;

  Future<void> init() async {
    _isAvailable = await _speech.initialize();
  }

  Future<void> startListening(Function(String) onResult) async {
    if (!_isAvailable) return;

    await _speech.listen(
      onResult: (result) {
        onResult(result.recognizedWords);
      },
      localeId: 'ar',
    );
  }

  Future<void> stopListening() async {
    await _speech.stop();
  }
}

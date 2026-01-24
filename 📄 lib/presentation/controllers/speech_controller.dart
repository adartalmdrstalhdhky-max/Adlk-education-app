import '../../services/voice/speech_to_text_service.dart';
import '../../services/voice/pronunciation_evaluator.dart';

class SpeechController {
  final SpeechToTextService speechService;
  final PronunciationEvaluator evaluator;

  SpeechController(this.speechService, this.evaluator);

  Future<void> start({
    required String expectedText,
    required Function(bool) onEvaluated,
  }) async {
    await speechService.startListening((spoken) {
      final result = evaluator.isCorrect(
        expected: expectedText,
        spoken: spoken,
      );
      onEvaluated(result);
    });
  }

  Future<void> stop() async {
    await speechService.stopListening();
  }
}

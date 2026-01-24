abstract class VoiceService {
  Future<void> startListening();
  Future<void> stopListening();
  Stream<String> get recognizedText;
}

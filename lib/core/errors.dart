class AppError {
  final String message;
  AppError(this.message);

  @override
  String toString() {
    return "AppError: $message";
  }
}

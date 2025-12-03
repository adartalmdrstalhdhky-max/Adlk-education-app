class Utils {
  /// Returns a greeting message for the user
  static String greetUser(String name) {
    return "Hello, $name!";
  }

  /// Example helper: format number with commas
  static String formatNumber(int number) {
    return number.toString().replaceAllMapped(
        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
  }
}

extension StringExtensions on String {
  bool containsIgnoreCase(String secondString) => this.toLowerCase().contains(
        secondString.toLowerCase(),
      );
}

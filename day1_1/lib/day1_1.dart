int ammendNumbers(String input) {
  int result = 0;
  final lines = input.split('\n');
  for (final line in lines) {
    final digits = line.replaceAll(RegExp(r'\D'), '');
    if(digits.isEmpty) continue;
    final lineNumber = int.parse('${digits[0]}${digits[digits.length - 1]}');
    result += lineNumber;
  }
  return result;
}

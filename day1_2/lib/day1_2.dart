int ammendNumbers(String input) {
  int result = 0;
  final lines = input.split('\n');
  for (final line in lines) {
    if (line.isEmpty) continue;
    final spelledToDigits = line.replaceAllMapped(splittedToDigits, (match) {
      return spelledNumbers[match[0]!].toString();
    });
    final digits = spelledToDigits.replaceAll(RegExp(r'\D'), '');
    if (digits.isEmpty) continue;
    final lineNumber = int.parse('${digits[0]}${digits[digits.length - 1]}');
    result += lineNumber;
  }
  return result;
}

RegExp get splittedToDigits => RegExp(
  spelledNumbers.keys.join('|'),
);

final spelledNumbers = {
  'one': 1,
  'two': 2,
  'three': 3,
  'four': 4,
  'five': 5,
  'six': 6,
  'seven': 7,
  'eight': 8,
  'nine': 9,
};

int sumOfIds(String input, int maxRed, int maxGreen, int maxBlue) {
  int result = idsPossible(input, maxRed, maxGreen, maxBlue).fold(0, (a, b) => a + b);
  return result;
}

List<int> idsPossible(String input, int maxRed, int maxGreen, int maxBlue) {
  final result = <int>[];
  for (String line in input.split('\n')) {
    if (line.isEmpty) continue;
    int gameId = int.parse(line.split(':').first.replaceAll(RegExp(r'\D'), ''));
    final steps = line.split(':').last.split(';');
    bool possible = true;
    for (String step in steps) {
      if (!possible) continue;
      final colors = step.split(',');
      for (String color in colors) {
        if (!possible) continue;
        if (_isColor(color, 'red')) {
          if (_getDigit(color) > maxRed) possible = false;
        }
        if (_isColor(color, 'green')) {
          if (_getDigit(color) > maxGreen) possible = false;
        }
        if (_isColor(color, 'blue')) {
          if (_getDigit(color) > maxBlue) possible = false;
        }
      }
    }
    if (possible) {
      result.add(gameId);
    }
  }
  return result;
}

bool _isColor(String str, String color) {
  return str.endsWith(color);
}

int _getDigit(String str) {
  return int.parse(str.replaceAll(RegExp(r'\D'), ''));
}

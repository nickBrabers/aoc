import 'package:day1_2/day1_2.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(ammendNumbers(exampleInput), 281);
  });
}

final exampleInput = '''
two1nine
eightwothree
abcone2threexyz
xtwone3four
4nineeightseven2
zoneight234
7pqrstsixteen
''';

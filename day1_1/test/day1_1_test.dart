import 'package:day1_1/day1_1.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    print(ammendNumbers(exampleInput));
    expect(ammendNumbers(exampleInput), 142);
  });
}

final exampleInput = '''
1abc2
pqr3stu8vwx
a1b2c3d4e5f
treb7uchet
''';

// final _submitInput =

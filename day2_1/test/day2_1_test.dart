import 'package:day2_1/day2_1.dart';
import 'package:test/test.dart';

void main() {
  test('sumOfIds', () {
    expect(sumOfIds(_testInput, 12, 13, 14), 8);
  });

  test('idsPossible', () {
    expect(idsPossible(_testInput, 12, 13, 14), [1, 2, 5]);
  });
}

final _testInput = '''
Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green
Game 2: 1 blue, 2 green; 3 green, 4 blue, 1 red; 1 green, 1 blue
Game 3: 8 green, 6 blue, 20 red; 5 blue, 4 red, 13 green; 5 green, 1 red
Game 4: 1 green, 3 red, 6 blue; 3 green, 6 red; 3 green, 15 blue, 14 red
Game 5: 6 red, 1 blue, 3 green; 2 blue, 1 red, 2 green
''';

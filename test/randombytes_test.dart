import 'package:randombytes/randombytes.dart';
import 'package:test/test.dart';

void main() {
  test('randombytes', () {
    expect(randomBytes(20).length, equals(20));
  });
}

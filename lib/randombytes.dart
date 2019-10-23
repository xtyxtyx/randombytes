/// Library that contains function to generate random bytes at given length.
library randombytes;

import 'dart:math';
import 'dart:typed_data';

/// [randomBytes] generates random bytes at given length.
///
/// when [secure] is enabled, Random.secure() is used instead of Random().
///
/// example:
/// ```
/// randomBytes(20);
/// ```
///
/// or:
/// ```
/// randomBytes(20, secure: true);
/// ```
Uint8List randomBytes(int length, {bool secure = false}) {
  assert(length > 0);

  final random = secure ? Random.secure() : Random();
  final ret = Uint8List(length);

  for (var i = 0; i < length; i++) {
    ret[i] = random.nextInt(256);
  }

  return ret;
}

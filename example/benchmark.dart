import 'package:randombytes/randombytes.dart';


final count = 100000;
final length = 20;

void main() {
  print('warming up the vm...');
  for (var i = 0; i < count; i++) {
    randomBytes(20);
  }

  final stopwatch = Stopwatch();
  stopwatch.start();

  for (var i = 0; i < count; i++) {
    randomBytes(20);
  }

  stopwatch.stop();
  final ms = stopwatch.elapsed.inMilliseconds;
  print('$count * $length bytes generated after $ms ms');

  stopwatch.reset();
  stopwatch.start();

  for (var i = 0; i < count; i++) {
    randomBytes(20, secure: true);
  }

  stopwatch.stop();
  final ms2 = stopwatch.elapsed.inMilliseconds;
  print('$count * $length bytes generated after $ms2 ms (secure)');
}


## Usage

A simple usage example:

```dart
import 'package:randombytes/randombytes.dart';

main() {
  print('${randomBytes(20)}');
}
```

or:

```dart
import 'package:randombytes/randombytes.dart';

main() {
  print('${randomBytes(20, secure: true)}');
}
```

__Note that with [secure] enabled [randomBytes] is about 200~300 times slower.__

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/xtyxtyx/randombytes/issues

A library for Dart developers.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Usage

A simple usage example:

```dart
var a = Pointer(121);
var b = Pointer(547);
a.swap(b);

var c = Pointer();
c.value = 'a';

var d = malloc(10);
d[5] = 'abc';
d[8] = 148;
d[7] = 5.1;
d[1] = false;

print(a);
print(b);
print(c);
print(d);
```
Output:
```text
547
121
a
[null, false, null, null, null, abc, null, 5.1, 148, null]
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/ali2236/dart_pointers/issues

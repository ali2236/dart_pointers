import 'package:dart_pointers/dart_pointers.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    test('First Test', () {
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
    });
  });
}

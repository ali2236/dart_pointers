import 'pointer.dart';

Pointer<List<T>> malloc<T>(int count) {
  return Pointer(List<T>(count));
}

void free(Pointer pointer) {
  if (pointer.value is List) {
    (pointer.value as List).clear();
    pointer.value = null;
  } else {
    pointer.value = null;
  }
}

void realloc(Pointer pointer, int newCount) {
  if (pointer.value is! List) {
    throw 'the provided pointer is not pointing to an Array';
  }
  var list = pointer.value as List;
  pointer.value = list = List.from(list, growable: true);
  list.length = newCount;
}

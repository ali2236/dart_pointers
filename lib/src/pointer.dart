class Pointer<T> {
  T value;

  Pointer([this.value]);

  operator [](int offset) {
    if (value is List) {
      return (value as List)[offset];
    } else if (offset == 0) {
      return value;
    } else {
      throw NullThrownError();
    }
  }

  operator []=(int offset, element) {
    if (value is List) {
      (value as List)[offset] = element;
    } else if (offset == 0 && element is T) {
      value = element;
    } else {
      throw Error();
    }
  }

  @override
  String toString() => value.toString();

  void swap(Pointer<T> other) {
    var temp = value;
    value = other.value;
    other.value = temp;
  }
}

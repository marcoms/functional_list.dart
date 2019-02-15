/// Returnes a new list with [value] appended to [list].
List<T> add<T>(List<T> list, T value) {
  return list + <T>[value];
}

/// Returns a new list with [values] appended to [list].
List<T> addAll<T>(List<T> list, Iterable<T> values) {
  return list + values.toList();
}

/// Returns a new list with the first occurance of [value] excluded.
List<T> remove<T>(List<T> list, T value) {
  final int valueIndex = list.indexOf(value);
  if (valueIndex == -1) {
    return list.toList();
  }

  final List<T> newList = [];
  for (int i = 0; i < list.length; ++i) {
    if (i != valueIndex) {
      newList.add(list[i]);
    }
  }

  return newList;
}

/// Returns a new list with all occurances of [value] excluded.
List<T> removeAll<T>(List<T> list, T value) {
  return list.where((element) => element != value).toList();
}

/// Returns a new list with the last occurance of [value] excluded.
List<T> removeLast<T>(List<T> list, T value) {
  final lastIndex = list.lastIndexOf(value);
  if (lastIndex == -1) {
    return list.toList();
  }

  final List<T> newList = [];
  for (int i = 0; i < list.length; ++i) {
    if (i != lastIndex) {
      newList.add(list[i]);
    }
  }

  return newList;
}

/// Returns a new list with the element at [index] excluded.
List<T> removeAt<T>(List<T> list, int index) {
  if (index < 0 || index >= list.length) {
    throw RangeError('index out of range');
  }

  final List<T> newList = [];
  for (int i = 0; i < list.length; ++i) {
    if (i != index) {
      newList.add(list[i]);
    }
  }

  return newList;
}

/// Returns a new list with all elements between [start] (inclusive) and [end]
/// (exclusive) excluded.
List<T> removeRange<T>(List<T> list, int start, int end) {
  if (
    start > end
    || start < 0
    || start > list.length
    || end < 0
    || end > list.length
  ) {
    throw RangeError('range $start-$end is invalid');
  }

  final List<T> newList = [];
  for (int i = 0; i < list.length; ++i) {
    if (!(i >= start && i < end)) {
      newList.add(list[i]);
    }
  }

  return newList;
}

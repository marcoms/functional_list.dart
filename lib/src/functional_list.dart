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

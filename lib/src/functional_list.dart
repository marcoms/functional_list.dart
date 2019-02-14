/// Returnes a new list with [value] appended to [list]
List<T> add<T>(List<T> list, T value) {
  return list + <T>[value];
}

/// Returns a new list with [values] appended to [list]
List<T> addAll<T>(List<T> list, Iterable<T> values) {
  return list + values.toList();
}

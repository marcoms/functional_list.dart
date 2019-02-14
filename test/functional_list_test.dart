import 'package:test/test.dart';

import '../lib/functional_list.dart' as fn_list;

main() {
  group('add()', () {
    test('adds a value to an empty list', () {
      final List<int> list = [];
      final List<int> returnedList = fn_list.add(list, 1);
      expect(returnedList, [1]);
    });

    test('adds a value to a populated list', () {
      final List<int> list = [1];
      final List<int> returnedList = fn_list.add(list, 2);
      expect(returnedList, [1, 2]);
    });
  });

  group('addAll()', () {
    test('adds an empty list to an empty list', () {
      final List<int> list = [];
      final List<int> returnedList = fn_list.addAll(list, []);
      expect(returnedList, []);
    });

    test('adds a populated list to an empty list', () {
      final List<int> list = [];
      final List<int> returnedList = fn_list.addAll(list, [1, 2]);
      expect(returnedList, [1, 2]);
    });

    test('adds an empty list to a populated list', () {
      final List<int> list = [1, 2];
      final List<int> returnedList = fn_list.addAll(list, []);
      expect(returnedList, [1, 2]);
    });

    test('adds a populated list to a populated list', () {
      final List<int> list = [1, 2];
      final List<int> returnedList = fn_list.addAll(list, [4, 8]);
      expect(returnedList, [1, 2, 4, 8]);
    });
  });
}

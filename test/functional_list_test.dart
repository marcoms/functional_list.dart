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

  group('remove()', () {
    test('removes the the specified value', () {
      final List<int> list = [1, 2];
      final List<int> returnedList = fn_list.remove(list, 2);
      expect(returnedList, [1]);
    });

    test('removes only the first instance of the specified value', () {
      final List<int> list = [1, 2, 4, 2];
      final List<int> returnedList = fn_list.remove(list, 2);
      expect(returnedList, [1, 4, 2]);
    });

    test('removes nothing if the value is not present', () {
      final List<int> list = [1, 2, 4];
      final List<int> returnedList = fn_list.remove(list, 8);
      expect(returnedList, [1, 2, 4]);
    });
  });

  group('removeAll()', () {
    test('removes all occurances of the specified value', () {
      final List<int> list = [1, 2, 4, 2, 2];
      final List<int> returnedList = fn_list.removeAll(list, 2);
      expect(returnedList, [1, 4]);
    });

    test('removes a single occurance of the specified value', () {
      final List<int> list = [1, 2, 4];
      final List<int> returnedList = fn_list.removeAll(list, 2);
      expect(returnedList, [1, 4]);
    });

    test('removes nothing if the value is not present', () {
      final List<int> list = [1, 2, 4];
      final List<int> returnedList = fn_list.removeAll(list, 8);
      expect(returnedList, [1, 2, 4]);
    });
  });

  group('removeLast()', () {
    test('removes the specified value', () {
      final List<int> list = [1, 2];
      final List<int> returnedList = fn_list.removeLast(list, 2);
      expect(returnedList, [1]);
    });

    test('removes only the last occurance of the specified value', () {
      final List<int> list = [1, 2, 4, 2, 4];
      final List<int> returnedList = fn_list.removeLast(list, 4);
      expect(returnedList, [1, 2, 4, 2]);
    });

    test('removes nothing if the value is not present', () {
      final List<int> list = [1, 2, 4];
      final List<int> returnedList = fn_list.removeLast(list, 8);
      expect(returnedList, [1, 2, 4]);
    });
  });

  group('removeAt()', () {
    test('removes an element at the specified index', () {
      final List<int> list = [1, 2, 4, 8];
      final List<int> returnedList = fn_list.removeAt(list, 1);
      expect(returnedList, [1, 4, 8]);
    });

    test('throws for index < 0', () {
      final List<int> list = [1, 2, 4];
      expect(() => fn_list.removeAt(list, -1), throwsRangeError);
    });

    test('throws for index >= list length', () {
      final List<int> list = [1, 2, 4];
      expect(() => fn_list.removeAt(list, 3), throwsRangeError);
    });
  });

  group('removeRange()', () {
    test('removes a range of elements from a list', () {
      final List<int> list = [1, 2, 4, 8];
      final List<int> returnedList = fn_list.removeRange(list, 1, 3);
      expect(returnedList, [1, 8]);
    });

    test('removes a single value from a list', () {
      final List<int> list = [1, 2, 4, 8];
      final List<int> returnedList = fn_list.removeRange(list, 1, 2);
      expect(returnedList, [1, 4, 8]);
    });

    test('removes all elements from a list', () {
      final List<int> list = [1, 2, 4, 8];
      final List<int> returnedList = fn_list.removeRange(list, 0, 4);
      expect(returnedList, []);
    });

    test('removes no values with an empty range', () {
      final List<int> list = [1, 2, 4, 8];
      final List<int> returnedList = fn_list.removeRange(list, 1, 1);
      expect(returnedList, [1, 2, 4, 8]);
    });

    test('throws when start > end', () {
      final List<int> list = [1, 2, 4, 8];
      expect(() => fn_list.removeRange(list, 2, 1), throwsRangeError);
    });
  });
}

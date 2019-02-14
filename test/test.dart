import 'package:test/test.dart';

import '../lib/functional_list.dart' as fn_list;

main() {
  group('add()', () {
    test('add() adds a value to an empty list', () {
      final List<int> list = [];
      final List<int> returnedList = fn_list.add(list, 1);
      expect(returnedList, [1]);
    });

    test('add() adds a value to a populated list', () {
      final List<int> list = [1];
      final List<int> returnedList = fn_list.add(list, 2);
      expect(returnedList, [1, 2]);
    });
  });
}

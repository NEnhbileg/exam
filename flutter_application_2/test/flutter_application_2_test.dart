import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_2/flutter_application_2.dart';

void main() {
  test('adds one to input values', () {
    final calculator = Calculator();
    expect(calculator.addOne(2), 3);
    expect(calculator.addOne(-7), -6);
    expect(calculator.addOne(0), 1);
  });
}

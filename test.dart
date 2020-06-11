

import 'package:test/test.dart';
import 'RangeTest.dart';

void main(){
  //4 tests for method "builder"
  test('Validate and convert range from string to int', () {
 Range range = builder("[2,6)");
 var arr = [2,5];
 expect(range.endPoints(), arr);

  });

  test('Validate and convert range from string to int', () {

    Range range = builder("(2,5]");
    var arr = [3,5];
    expect(range.endPoints(), arr);
    
  });
  test('Validate and convert range from string to int', () {

    Range range = builder("[2,10[");
    expect(range, null);
    
  });
  test('Validate and convert range from string to int', () {

    Range range = builder("(1,9}");
    expect(range, null);
  });

  //4 tests for method "contains"
  test('Validate that the range contain the correct numbers', () {
    Range range = builder("[2,6)");
    var arr = [2,3,4,5];
    expect(range.contains(arr), true);

  });
   test('Validate that the range contain the correct numbers', () {
    Range range = builder("(2,5]");
    var arr = [3,4,5];
    expect(range.contains(arr), true);

  });
  test('Validate that the range contain the correct numbers', () {
    Range range = builder("[2,10]");
    var arr = [1,2,3,4,5,6,7,8,9,10,11];
    expect(range.contains(arr), false);

  });
  test('Validate that the range contain the correct numbers', () {
    Range range = builder("(1,9)");
    var arr = [1,2,3,4,5,6,7,8,9];
    expect(range.contains(arr), false);

  });

//4 tests for method "does not contains"
test('Validate that the range does not contain the correct numbers', () {
    Range range = builder("[2,6)");
    var arr = [2,3,4,5];
    expect(range.notContain(arr), false);

  
});
   test('Validate that the range does not contain the correct numbers', () {
    Range range = builder("(2,5]");
    var arr = [3,4,5];
    expect(range.notContain(arr), false);

});
test('Validate that the range does not contain the correct numbers', () {
    Range range = builder("(1,9)");
    var arr = [1,2,3,4,5,6,7,8,9];
    expect(range.notContain(arr), true);

  });
  test('Validate that the range does not contain the correct numbers', () {
    Range range = builder("[2,10]");
    var arr = [1,2,3,4,5,6,7,8,9,10,11];
    expect(range.notContain(arr), true);

  });
  
  //4 tests for method "allPoints"
  test('Print all the numbers contained in the range', () {

    Range range = builder("[2,6)");
    var arr = [2,3,4,5];
    expect(range.allPoints(), arr);
    
  });
   test('Print all the numbers contained in the range', () {

    Range range = builder("(2,5]");
    var arr = [3,4,5];
    expect(range.allPoints(), arr);
    
  });
   test('Print all the numbers contained in the range', () {

    Range range = builder("[2,10]");
    var arr = [2,3,4,5,6,7,8,9,10];
    expect(range.allPoints(), arr);
    
  });
  test('Print all the numbers contained in the range', () {

    Range range = builder("(1,9)");
    var arr = [2,3,4,5,6,7,8];
    expect(range.allPoints(), arr);
    
  });

  //4 tests for method "contains range"
  test('Validate that the range is contained in the initial range', () {
    
    Range range = builder("[2,6)");
    expect(range.containsRange(builder("[3,5)]")), true);
  });
   test('Validate that the range is contained in the initial range', () {
    
    Range range = builder("(2,5]");
    expect(range.containsRange(builder("[3,5]")), true);
  });
   test('Validate that the range is contained in the initial range', () {
    
    Range range = builder("[2,10]");
    expect(range.containsRange(builder("[1,10]")), false);
  });
    test('Validate that the range is contained in the initial range', () {
    
    Range range = builder("(1,9)");
    expect(range.containsRange(builder("[2,10)")), false);
  });

  //4 tests for method "does not contains range"
  test('Validate that the range is not contained in the initial range', () {
    Range range = builder("[2,6)");
    expect(range.notContainsRange(builder("[3,5)")), false);

  });
  test('Validate that the range is not contained in the initial range', () {
    Range range = builder("(2,5]");
    expect(range.notContainsRange(builder("[3,5]")), false);

  });
  test('Validate that the range is not contained in the initial range', () {
    Range range = builder("[2,10]");
    expect(range.notContainsRange(builder("[1,10]")), true);

  });
   test('Validate that the range is not contained in the initial range', () {
    Range range = builder("(1,9)");
    expect(range.notContainsRange(builder("[2,10)")),true);

  });

  //4 tests for method "endPoints"
  test('Print the values of the extremes of the range', () {
    
    Range range = builder("[2,6)");
    var arr = [2,5];
    expect(range.endPoints(), arr);
  });
   test('Print the values of the extremes of the range', () {
    
    Range range = builder("(2,5]");
    var arr = [3,5];
    expect(range.endPoints(), arr);
  });
   test('Print the values of the extremes of the range', () {
    
    Range range = builder("[2,10]");
    var arr = [2,10];
    expect(range.endPoints(), arr);
  });
   test('Print the values of the extremes of the range', () {
    
    Range range = builder("(1,9)");
    var arr = [2,8];
    expect(range.endPoints(), arr);
  });

  //4 tests for method "overlaps range"
  test('Validate that the ranges overlaas', () {
    Range range = builder("[2,6)");
    expect(range.overLapsRange(builder("[3,5)")), true);
  });
  test('Validate that the ranges overlaas', () {
    Range range = builder("(2,5]");
    expect(range.overLapsRange(builder("[3,5)")), true);
  });
  test('Validate that the ranges overlaas', () {
    Range range = builder("[2,10]");
    expect(range.overLapsRange(builder("(11,15)")), false);
  });
  test('Validate that the ranges overlaas', () {
    Range range = builder("(1,9)");
    expect(range.overLapsRange(builder("[-5,-2)")), false);
  });
  //4 tests for method "equal"
  test('Validate that the range are equal', () {
    
    Range range = builder("[2,6)");
    expect(range.equals(builder("[2,6)")), true);
  });
   test('Validate that the range are equal', () {
    
    Range range = builder("(2,5]");
    expect(range.equals(builder("(2,5]")), true);
  });
   test('Validate that the range are equal', () {
    
    Range range = builder("[2,10]");
    expect(range.equals(builder("[2,15]")), false);
  });
   test('Validate that the range are equal', () {
    
    Range range = builder("(1,9)");
    expect(range.equals(builder("(1,10)")), false);
  });

//4 tests for method " not equal"
test('Validate that the ranges are not equal', () {
  Range range = builder("[2,6)");
  expect(range.notEquals(builder("[2,6)")), false);
});
test('Validate that the ranges are not equal', () {
  Range range = builder("(2,5]");
  expect(range.notEquals(builder("(2,5]")),false);
});
test('Validate that the ranges are not equal', () {
  Range range = builder("[2,10]");
  expect(range.notEquals(builder("[2,15]")),true);
});
test('Validate that the ranges are not equal', () {
  Range range = builder("(1,9)");
  expect(range.notEquals(builder("(1,10)")),true);
});
}

void main() {

}
Range builder(String value){
int num, numb;
  var value1 = value[0];
  var value2 = value[value.length - 1];
  if ((value1 == '(' || value1 == '[') && (value2 == ')' || value2 == ']')) {
    var array = value
        .replaceAll('(', "")
        .replaceAll('[', '')
        .replaceAll(')', '')
        .replaceAll(']', '');
    List<String> ranges = array.split(',');
    num = int.parse(ranges[0]);
    numb = int.parse(ranges[1]);
    if (value1 == '(') {
      num += 1;
    }
    if (value2 == ')') {
      numb -= 1;
    }
    var range = new Range(num, numb);
    return range;
  } else {
    return null;
  }

}


class Range{

int num;
int numb;
Range(int number1, int number2){
  this.num = number1;
  this.numb = number2;

}
bool contains(List<int> numbers){
  for(var item in numbers){
    if(item < num || item > numb){
      return false;
    }
  }
  return true;
}

bool notContain(List<int> numbers){
  return !contains(numbers);
}
List<int> allPoints(){
     int less = this.numb - this.num;
    var numbers = new List(less + 1);
    for (int i = 0; i <= less; i++) {
      numbers[i] = this.num + i;
    }    
    List<int> list = numbers.map((array) => array as int).toList();
    return list;
}
bool containsRange(Range range){

  if(range.num >= this.num && range.numb <= this.numb){
    return true;
  }else{
    return false;
  }
}
bool notContainsRange(Range range){
  return !containsRange(range);

}
bool overLapsRange(Range range){
  var numbers = range.allPoints();
    for (var item in numbers) {
      if (item >= num && item <= numb) {
        return true;
      }
    }
    return false;
}
bool equals(Range range){
  if(this.num == range.num && this.numb == range.numb){
    return true;
  }else{
    return false;
    }
  
}
bool notEquals(Range range){
  return !equals(range);
}

List<int> endPoints(){
  List<int> numbers = [num, numb];
  var array = numbers;
  return array;

}

}



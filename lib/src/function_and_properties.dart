void main() {
  // ====================================================================
  // **Function Syntax and properties**
  // function in dart is object, so the variabel can store the result function
  // you can omit the type parameter if you use void or optional retun type,
  // but recommended to set void as return type
  var mm = findArea(); // it will be null because return type is void
  print(mm);

  // Expression in the function
  var func1 = "The perimeter is ${2 * ( 3 + 5)}";

  // Fat Arrow (=>)
  // it is used to short the function body, so you can use this with single expression in function
  fatArrowExamp();

  //Optional positional parameter
  // to make optional wrap parameter with []
  optionalPositionParam("budi");

  // optional named parameter
  // to make named parameter wrap parameter with {}
  // sequence does not matter
  // using this also applied optional parameter
  namedParameter(10, breadth: 9);
  
  // default parameter
  defaultValueParam(10, 20);
  defaultValueParam(10, 20, height: 90);
}

void defaultValueParam(int length, int breadth, { int height = 10 }){
  print(length + breadth + height);
}

void namedParameter(int lenght, { int breadth, int height }){
  print(lenght);
  print(breadth);
  print(height);
}

void optionalPositionParam(String name1, [String name2, String name3]){
  print(name1);
  print(name2);
  print(name3);
}

void fatArrowExamp() => print("we are using fat arrow");

findArea(){}

int findAreas(){
  // it will result null because we don't return anything
}
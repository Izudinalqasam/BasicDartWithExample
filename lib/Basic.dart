/// Support for doing something awesome.
///
/// More dartdocs go here.
library untitled1;

export 'src/untitled1_base.dart';
import 'dart:collection';
import 'CustomLibrary.dart';
import "dart:async";  // for using async await await for
import 'dart:io';
import 'dart:convert'; // to use stream convert
import 'dart:isolate';  // to use Isolate


// TODO: Export any libraries intended for clients of this package.

void main() {
  // you can use dynamic if you want the variable type change in the future
  dynamic fooDynamic = 10;
  print(fooDynamic);
  fooDynamic = true;
  print(fooDynamic);

  // print
  print("Hello");
  print(4);
  print(3 -2);
  print(9 == 0);

  // comment
  /*
  this is syntax
   */

  // ====================================================================
  // data type
  // all data type is object
  int n = 0;
  double nm = 0;
  double exponent = 1.42e5;
  int simpleValue;
  var varValues;
  String strValues = "";
  bool isAlive = false;

  int hexValue = 0xEADEBAEE;


  // ====================================================================
  // **String manipulation**
  //literal
  true;

  // Various ways to define string literals in dart
  String s1 = 'Single';
  String s2 = "Double";
  String s3 = 'It\'s easy';
  String s4 = "It's easy";
  String s5 = "This is going to be a very long string "
      'this is just a simple demo in dart progamming language';
  
  // String interpolation
  String name = "kevin";
  String message = "My name is ${name.length}";

  // ====================================================================
  // **Const and Final**
  // use final and const when you never change a value
  // final variable can only be set once and it is initialized when accessed
  // const variable is implicitly final but it is a compile-time constant, it will initialized
  // event though you don't use
  // Instance variable can be final but cannot be const
  // if you want a constant variable at class level then make it "static const"

  final cityName = "Mumbai";
  final String cityNames = "Indonesia"; // type data is optional, example before is same with the next

  const PI = 3.14;
  Circle();


  // ====================================================================
  // **Control Flow Statement**
  var salary = 25000;

  if (salary > 25000){
    print("Congratulation");
  } else {
    print("You have failed");
  }

  // Conditional Expression
   var cEP = 3 == 2 ? print("it is smaller") : print("it is bigger");
  // the bellow will check if the left side variable is null it will use the right
  int cEPSNull;
  var cEPS = cEPSNull ?? "default";

  // Switch Case statement: it is applicable for only int and string, boolean and double is not allowed
  switch('A') {
    case 'A' :
      print("Excelent");
      break;

    default:
      print("Invalid Grade");
  }

  // ====================================================================
  // **Loop and Iterators**
  // for loop in dart is same with java, there is for loop, while loop, do while loop
  // there is also for in loop for looping the list

  // Break and continue with label
  outherLoop: for (int i = 0; i < 3; i++){
    for (int j = 0; j < 3; j++){

      if (j == 3){
        break outherLoop;
        // it will continue the outher loop
        continue outherLoop;
      }
    }
  }

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

  // ====================================================================
  // **Exception Handling**
  // tilda (~) operator to make the calculation to match with the return type
  // Use ON syntax if you know sure the error will be happened
  // when you don't know the exception use catch
  // you can add Stack trace to know event occurred before exception was thrown by
  // add additional variable after catch exception variable
  // there is also finally syntax it work same as in java
  int result = 12 ~/ 4;

  try {
    int excep1 = 12 ~/ 0;
  } on IntegerDivisionByZeroException {
    print(" Cannot divide by zero ");
  }

  try {
    int excep2 = 12 ~/ 0;
  } catch(e){
    print("The exception thrown is $e");
  }

  // add stack trace
  try {
    int excep3 = 12 ~/ 0;
  }catch(e, s){
    print("The exception thrown is $e");
    print("The Stack Trace \n $s");
  }

  // Custom Exception handling class
  try {
    if (1 <  2){
      throw DepositException();
    }
  } catch (e) {
    print(e.errorMessage());
  }


  // ====================================================================
  // **Class, Object, Instance, refeference variable
  // new keyword is not mandatory if you make new object
  // we cannot have two constructor in the same class
  // there is constant constructor but it is used in GUI

  var student = Student(23, "peter");
  student.id = 23;
  student.name = "Peter";
  print("${student.id} and ${student.name}");

  var student3 = Student.myCustomConstructor();
  student3.id = 54;
  student3.name = "maman";

  // ====================================================================
  // **Getter and Setter, Inheritance
  // add underscore (_) to private instance variable for its own library
  // inheritance in dart is like java
  // multilevel inheritance is class c extend class b, and class b extend class a
  // object class is a super class of all class
  // in dart if you call the child constructor the parent constructor is called too,
  // so you dont have to call super keyword by default
  // the constructor is called in the first called
  // when you make named constructor, it will automatically call the parent constructor

  // Custom Constructor
  var mExamp = GetterSetterExmp();
  mExamp.name = "Jai";
  mExamp._name = "";

  var dog = Dog("RED");
  dog.eat();

  // ====================================================================
  // **Abstract Class and Interface
  // Abstract class cannot be instantiated by new keyword
  // Abstract method can only exist in the abstract class
  // to make abstract method we just make method without funtion body
  // the other thing about abstract is same with java
  // to make interface, just make class as usual, but in the child class
  // you have to use implement instead of extend
  // class can implement multiple interface
  // in dart you can't extend multiple class

  // ====================================================================
  // **Enumeration
  // it is used for defining named constant values
  // you can make enumeration of the class by using enum keyword

  var myRect = Rectangle();
  print(BasicEnum.bali);

  // ====================================================================
  // **Static method and variable
  // you can make static variable or method only add static before variable type or method return type
  // static member of the class cannot be accessed by instance of the class
  // use static keyword , every object which you access, it will consume once memory
  // add const to make the variable static can't be changed
  // static variable is lazy initialized

  StaticExample.calculateArea();
  StaticExample.PI;

  // ====================================================================
  // **Lamda and High order function
  // in dart, it has special class Fuction to be used by lamda function
  // function can return high order function, by giving return type of function with Function keyword
  // in the parameter of lamda function, you can remove the type of parameter,
  // just write the name of variable

  // No return
  Function thisIsLamdaFunction = (int a, int b){
    var  sum = a + b;
    print(sum);
  };

  Function value = (number){
    return number * 4;
  };

  Function valueFatArrow = (int number) => number * 2;

  thisIsLamdaFunction(3, 5);
  print(valueFatArrow(5));

  // High Order Function
  someOtherFucntiion("Hello", (a, b) => print(a + b));

  // taskToPerform will return the function
  var myFunct = taskToPerform();
  print(myFunct(10));

  // ====================================================================
  // **Closure
  // it is special function which allow you to modify the values of variable
  // present in the parent scope or outher scope

  String closureMessage = "Dar is good";
  // this is closure
  Function showMessage = () {
    message = "Dart is the best";
    print(message);
  };

  showMessage();

  // another example
  Function talk = () {

    String msg = "Hi";

    Function say = (){
      msg = "Hello";
      print(msg);
    };

    return say;
  };

  var speak = talk();
  speak();

  // ====================================================================
  // **List
  // two type of list, Fixed-Length list,
  // Fixed list like array in java, you cannot change the size of the list
  // you can use the functional programming in the list
  // we can remove value, based on index, add value and clear list; but it is not support in the fixed-list, only for growable-list
  // to make Growable list don't pass the length into the constructor of the list, instead you will make fixed-list
  // to insert data to growable list, you have to use add keyword, for update data is same with fixed-list
  // when you remove value from the growable, the size of index will change

  // Fixed-Length List
  List<int> numberList = List(1);
  numberList[0] = null; // it will delete the value
  numberList[0] = 23;

  numberList.forEach((number) => print(number));
  numberList.map((number){
    return number * number;
  });

  print(numberList[0]);

  // Growable
  List<int> growableList = List();
  growableList.add(10);

  List<String> growableStr = ["satu", "dua", "tiga"];
  growableStr.add("empat");
  growableStr.add("lima");

  // ====================================================================
  // **Set
  // Unordered Collection of Unique items
  // it can save the unique value
  // it doesn't contain duplicate elements, you can't get element by index
  // it is based on hash-table based set implementation
  // the data of the set can't be accessed by for loop

  // method 1 to create
  Set<String> setCountries = Set.from(["Usa","India", "Indonesia"]);
  setCountries.add("Nepal");
  setCountries.add("Japan");

  // method 2 to create
  Set<int> numberSet = Set();
  numberSet.add(99);
  numberSet.add(10);
  numberSet.add(23);
  numberSet.add(14);

  //method 3
  var names = <String>["Joko", "Bambang"];
  names.forEach((f) => print(f));

  // ====================================================================
  // **Map and HashMap
  // it is called hash or dictionary
  // Map is unordered collection of key-value pair
  // Map key can be of any object type
  // the different of map and hash map is hash map based on hash-table
  // the rest of operation is same with java

  // method 1 to create
  Map<String, String> fruitMap = Map();
  fruitMap["apple"] = "red";
  fruitMap["banana"] = "yellow";
  
  // update value
  fruitMap.update("apple", (value) => "green");

  // another way to create map using method of literal, this method 2
  Map<String, int> countryDialingCode = {
    "USA" : 1,
    "INDONESIA" : 62
  };

  // ====================================================================
  // **Queue
  // it is a collection which can be manipulated at both ends, it is FIFO
  Queue<String> numQ = Queue();
  numQ.add("Queue 1");

  numQ.forEach((value) => print(value));
  // ====================================================================
  // **Callable
  // it is class but it can be called like any call function

  var personOne = PersonCall();
  personOne(25, "Peter"); // it will excuete call method in the Person Call

  // ====================================================================
  // **Runes
  // Dart represent strings as a sequence of Unicode UTF-16 code units
  // because of that 32-bit Unicode values within a string are represented using a special syntax
  // Rune is an integer representing a Unicode code point
  // Code units in a string can be accessed through their index, it will return 16 bit UTF-16
  // you can get unmodifiable list of the UTF 16 Code unit of string by codeUnit Syntax

  print("Aku".codeUnitAt(0));
  print("Aku".codeUnits);

  // ====================================================================
  // **Generic
  // it can be used in the class, it is called parameterized type
  // you can restrict the parameterized type to limit the type of its parameter
  // for type casting you can use as, retype(), and cast
  // as cannot be used to typecast e.g List<dynamic> to List<num>
  // but you can use .retype<num>() to cast it
  // if you use cast() it will not change the type but return the type like example below

  // --> class cache is abstract
  // restrict
  var restrictClass = Foo();
  print(restrictClass);

  // generic method

  var foo = [1,2,3];
  var bazCast = foo.cast<Object>();
  print(bazCast.runtimeType); // CastList<int, Object>
  print(foo.runtimeType); // List<int>
  print(bazCast == foo); // true

  // ====================================================================
  // **Typedef or function-type alias
  // it helps to define pointers to executable code within memory
  // it gives a function type a name that you can use when declaring fields and return types
  // you can follow the number of step to implement typedefs
  // 1. it can be used to specify a function signature that we want specific function to match
  // 2. a variable of typedef can point to any function having the same signature as typedef
  // typedef can also be passed as a parameter to a function.

  // The operte variable can point to any method which takes one integer parameters.
  doManyOperation operte;
  operte = addBasedonSignature;
  operte(10);
  operte = devideBasedonSignature;
  operte(4);

  // ====================================================================
  // **Libraries
  // import 'package: lib1/lib1.dart' show foo, bar;
  // Import only foo and bar.
  // import 'package: mylib/mylib.dart' hide foo;
  // Import all names except foo
  // use the identifiers with an underscore ( _ ) to mark its component in liberay private
  // we make own library in another file

  // this is method from CustomLibrary.dart and library my_custom_library
  addMyCustomLibrary();

  // ====================================================================
  // **Asynchronous operation and handling stream
  // there are 2 option, that is used async await and Future API
  // await function will result a Future
  // this Future object indicates a promise to return an object
  // adding the async keyword to a function makes it reutrn a future.
  // If your function doesn’t return a useful value, make its return type Future<void>
  // you can us Future Wait to manage multiple Futures and wait for them to complete

  // Future Api
  File file = File(Directory.current.path + "/lib/data/contact.txt");
  Future data = file.readAsString();

  data.then((value) => print(value));
  data.then((_) => print(""));  // you can use underscore if you don't want use the parameter oh lambda func

  Future f = checkVersioning();

  // return a future, this is Async method
  f.then((data) => print(data));

  // we can catch error , ut us asynchronous version of try-catch
  f.then((data) => print(data)).catchError((err){
    print(err);
  });

  print("end of the read");

  // Future await

  // then() method return a Future, providing a useful way to run multiple asynchronous
  // function in a certain order
  // if the callback of then() method is future, it will return an equivalent future
  // if return a value of any other type, then() create a new Future that completes with the value

  // Async Await

  // there are 2 option to get values from a stream
  // 1. Use async and an asynchronous for loop (await for).
  // 2. Use the Stream API.
  // you shouldn't use await for for UI event listeners, because UI framework send endless streams of events
  // using await in the order of statement will make the proses synchronize

  // ====================================================================
  // **Generator
  // you can use Generator When you need to lazily produce a sequence of values
  // there are 2 type synchronous, asynchronous
  // yield statement to deliver value

  naturalTo(3).forEach((f) => print(f));
  asynchronousNaturalsTo(4).forEach((f) => print(f));

  // ====================================================================
  // **Stream
  // Stream representing sequence of data, such Button  in HTML event
  // to subscribe the stream use listen()
  // if you care about only one event, you can get it using a property such as first, last, or single
  // to test event before handling it, use firstWhere(), lastWhere(), or singleWhere().
  // if you care about a subset of events, you can use method such as skip(), skipWhile(), take(), takeWhile(), and where().
  // Use the transform() method to produce a stream with a different type of data:
  // to handle error in await for, just use try catch
  // Code that executes after the stream is closed goes after the asynchronous for loop
  // if you string using onDone and onError

  var sourcePath = "";

  FileSystemEntity.isDirectory(sourcePath).then((isDir){
    if(isDir){
      final startDir = Directory(sourcePath);
      startDir.list(
        recursive: false,
        followLinks: true)
          .listen((entity){
        // do something when item is streamed
      }
      , onDone: () => print("do something")
      , onError: (e) => print("the error is $e")
      );
    } else {
      // do something when item is streamed
    }
  });

  // the above code is same with Asynchronous for loop (await for)
  awaitForStream().then((value) => print(""),onError: () => print(""));

  // ====================================================================
  // **Concurrency
  // it is the execution of several instruction sequences at the same time
  // dart uses Isolates as a tool for doing works in parallel
  // the only way to send data between units of running code is by passing message
  // it is like thread in java, but it is not totally same
  // in that(because) an isolate has its own memory
  // Different isolate can communicate by sending values through port (ReceivePort, SendPort)
  // Isolate runs code in its own event loop, and each event may run smaller task in a nested micro task queue

  // spawn takes 2 parameters, the first parameter the function to be spawned and
  // the second parameter object will be passed to the spawned function, it can be passed null if there is no object to pass
  // the order of the function executed is not guarantee, main function can be executed first or later after runningProcessIsolate fucntion
  // so the result will be different each time or in different hardware and OS configuration
  // we can pass port which the callback or function can be used to send message back to the caller
  // the caller can be two way, callback to caller, caller to callback
  // you can use kill to stop the Isolate

  simpleIsolate();

  // it implements port in Isolate, and how to kill isolate
  // the priority immediate means it will cleanly shut down the isolate at the nearest opportunity
//  startIsolate()
  callerCreateIsolate();

}

SendPort newIsolateSendPort;
Isolate newIsolate;

void callerCreateIsolate() async {
  var receivePort = ReceivePort();

  newIsolate = await Isolate.spawn(callbackFuncCreateIsolate, receivePort.sendPort);

  // retrieve the send port to be used to notify the port in the method to do something
  newIsolateSendPort = await receivePort.first;

  int count = 0;
  Timer.periodic(Duration(seconds: 2), (timer){
    count++;
    count == 5 ? newIsolate.kill(priority: Isolate.immediate) : newIsolateSendPort.send("Two Ways Communicate $count");
    count == 5 ? timer.cancel() : "";
  });

}

void callbackFuncCreateIsolate(SendPort sendPort){
  var newsIsolateReceivePort = ReceivePort();

  // send back the port to the caller
  sendPort.send(newsIsolateReceivePort.sendPort);
  newsIsolateReceivePort.listen((data) {
    print(data);
  });
}

void startIsolate() async {
  var receivePort = ReceivePort();
  Isolate isolate = await Isolate.spawn(runTime, receivePort.sendPort);
  receivePort.listen((message) {
    if (message == "5") {
      stopIsolate(isolate) ? isolate = null : isolate = isolate;
      print(isolate == null);
    }else {
      stdout.write("RECEIVE: Notification $message, ");
    }
  });
}

bool stopIsolate(Isolate isolate){
  isolate?.kill(priority: Isolate.immediate);

  if (isolate != null){
    stdout.write("Killing isolate ");
    return true;
  }
}

void runTime(SendPort sendPort){
  int counter = 0;

  Timer.periodic(Duration(seconds: 1), (timer){
    counter++;
    String msg = "$counter";
    stdout.write("SEND: Notification $msg - ");
    sendPort.send(msg);
  });
}


void runningProcessIsolate(var message){
  print("Execution from long process..... this message is $message");
}

Future<void> awaitForStream() async {
  var sourcePath = "";

 if (await FileSystemEntity.isDirectory(sourcePath)){
   final startingDir =  Directory(sourcePath);
   try {
     await for (var entity in startingDir.list(
         recursive: false,
         followLinks: true
     )) {
       if (entity is File) {
         // do something
       }
     }
   } catch (e) {
     // do something
   }

 } else {
   // do something
 }
}

void simpleIsolate() async {
  Isolate isolateOne = await Isolate.spawn(runningProcessIsolate, "Hello !!");
  Isolate isolateTwo = await Isolate.spawn(runningProcessIsolate, "Greetings!!");
  Isolate isolateThree = await Isolate.spawn(runningProcessIsolate, "Welcome!!");

  print("Execution from main1");
  print("Execution from main2");
  print("Execution from main3");
}

Future getAllFuture() async {
  await Future.wait([deleteLotsOfFiles(), copyLotsOfFiles(), checksumLotsOfOtherFiles()]);
}

// just case for Future.wait()
Future deleteLotsOfFiles() async => "";
Future copyLotsOfFiles() async => "";
Future checksumLotsOfOtherFiles() async => "";

Iterable<int> naturalTo(int n) sync* {
  int k = 0;
  // ignore: curly_braces_in_flow_control_structures
  while (k < n) yield k++;
}

Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  // ignore: curly_braces_in_flow_control_structures
  while (k < n) yield k++;
}

Future listStream() async => <String>["Kuja1"];

Future<String> lookLongOperation() async => "1.0.0";

Future<int> checkVersioning() async {
  try {

//    await for (String nm in listStream()){
//
//      // to stop listening to the stream
//      break;
//    }

    return await doLongOperation();
  } catch (e) {
    // do somethig
  }
}

int doLongOperation() => 1;

Future<String> gatherNewsReport()
 => Future.delayed(Duration(minutes: 1),() => "gethered");


// this is function signature
typedef doManyOperation(int firstNo);

addBasedonSignature(int data){
  print("add result is $data");
}

devideBasedonSignature(int data){
  print("devide result is ${data/2}");
}

T firstGen<T>(List<T> ts) => ts[0];

class Foo<T extends int>  {

}

abstract class Cache<T> {
  T getByKey(String key){
    return key as T;
  }

  void setByKey(String key, T value);
}

enum BasicEnum {
  jakarta,
  bogor,
  bali
}

class PersonCall {

  // you can add return type before call function
  call(int age, String name){
    print("The name of the person is $name and age is $age");
  }

}

void someOtherFucntiion(String message, Function myFunction){
  print(message);
  myFunction(2, 4);
}

Function taskToPerform() {
  Function localFunction = (number) => number * 4;
  //it can be
//  return localFunction;
  // or be
  return (int number) => number * 4;
}

class StaticExample {

  static const double PI = 3.14;

  static void calculateArea(){
    // do something
    // it is not allowed to call normal function from the static function
//    myNormalFunction()
  }

  void myNormalFunction(){
    calculateArea();
  }
}

// this is interface class
class InterfaceRemote {
  void volumeUp(){
    print("--------Remote Volume Up-----------");
  }

  void volumeDown(){
    print("--------Remote Volume Down-----------");
  }
}

class Television implements InterfaceRemote {

  @override
  void volumeUp() {

  }

  @override
  void volumeDown() {

  }
}

abstract class Shape {
  // this is abstract method
  void draw();

  // this is normal method in abstract class
  void drawNonAbstract(){

  }
}

class Rectangle extends Shape {

  @override
  void draw() {
    print("Drawing Rectangle ...");
  }
}

class Animal {

  Animal(String color);

  Animal.myAnimalConstructor();

  void eat(){
    print("Animal is eating");
  }
}

class Dog extends Animal {

  Dog(String color) : super(color);

  Dog.myDogConstructor() : super.myAnimalConstructor();

  @override
  void eat() {
    print("Dog is eating");
  }
}

class GetterSetterExmp {

  // Default Getter Setter
  String _name;

  // Custom Setter
  void set name(String marksSecured) => _name = marksSecured;

  // Custom getter
  String get name => _name;
}

class Student {
  int id;
  String name;

  // parametered constructor
  Student(this.id, this.name);

  // named constructor
  Student.myCustomConstructor(){
    // do your code
  }

  Student.myAnotherCustomConstructor(this.id, this.name);

  void study(){
    print("${name} is now studying");
  }

  void sleep(){

  }
}

class DepositException implements Exception {
  String errorMessage() {
    return "You cannot enter amount less than 0";
  }
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

class Circle {
  final color = 'red';
  static const PI = 3.14;

  // it cannot be const, you have to add static keyword like above
// const PIP = 3.19;

}

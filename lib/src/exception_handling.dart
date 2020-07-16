void main() {
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
}

class DepositException implements Exception {
  String errorMessage() {
    return "You cannot enter amount less than 0";
  }
}
main(List<String> args) {
// ====================================================================
  // **Control Flow Statement**
  var salary = 25000;

  if (salary > 25000) {
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
  switch ('A') {
    case 'A':
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
  outherLoop:
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      if (j == 3) {
        break outherLoop;
        // it will continue the outher loop
        continue outherLoop;
      }
    }
  }
}

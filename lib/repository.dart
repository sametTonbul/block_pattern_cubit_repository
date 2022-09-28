class MyRepository {
  int doPlusRepository(String number1forPlus, String number2forPlus) {
    int number1forPlusToParse = int.parse(number1forPlus);
    int number2forPlusToParse = int.parse(number2forPlus);
    int resultPlus = number1forPlusToParse + number2forPlusToParse;
    return resultPlus;
  }

  int doMultiplyRepository(
      String number1forMultiply, String number2forMultiply) {
    int number1forMultiplyToParse = int.parse(number1forMultiply);
    int number2forMultiplyToParse = int.parse(number2forMultiply);
    int resultMultiply = number1forMultiplyToParse * number2forMultiplyToParse;
    return resultMultiply;
  }
}

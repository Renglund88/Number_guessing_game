import 'dart:io';
import 'dart:math';

/*
  Number guessing game - a random number will be generated on
  startup and prompt the player to guess which number.
*/

void main(List<String> arguments) {

  // Prompt the player to guess the random number
  print('\nGame started! \n');
  print('Guess the number between 1 - 10:');

  bool isCorrect = false;
  // Generate random number between 0 - 10
  int? correctAnswer = Random().nextInt(10);
  // Read the guess from the user
  String? answer = stdin.readLineSync();
  
  while( isCorrect == false ) {
    // Check if user's answer is correct
    isCorrect = checkAnswer(answer, correctAnswer);
    if(isCorrect == true) {
      isCorrect = true;
      print('Correct answer!');
      break;
    }
    else {
      print('Incorrect answer, plase try again:');
      isCorrect = false;
      print('Guess the number beteen 1 - 10');
      answer = stdin.readLineSync();
    }
  }
}

// Compare user´s answer to the generated
// and see if the guess was correct
bool checkAnswer(String? answer, int? correctAnswer) {
  if (int.parse(answer.toString()) == correctAnswer) {
    print('Correnct answer!');
    return true;
  } else {
    print('Your answer was not correct!');
    return false;
  }
}

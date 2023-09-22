import 'dart:io';

void main() {
  // Prompt the user for input
  print('Enter a number:');

  try {
    // Read the input number from the user
    String input = stdin.readLineSync() ?? '';
    double number = double.parse(input);

    // Calculate the absolute difference using a separate function
    double difference = calculateAbsoluteDifference(number);

    // Print the result
    print('Result: $difference');
  } catch (e) {
    print('Invalid input. Please enter a valid number.');
  }
}

// Function to calculate the absolute difference
double calculateAbsoluteDifference(double number) {
  if (number > 17) {
    return (number - 17).abs();//.abs() is called on the result to ensure that the value is positive
  } else {
    return number;
  }
}


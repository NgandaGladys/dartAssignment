//write a dart program that accepts the radius of the circle from the user and calculate its area.
import 'dart:io';
import 'dart:math';

void main() {
  // Prompt the user to enter the radius of the circle
  print("Enter the radius of the circle: ");
  
  // Read the radius as a string from the console
  String? radiusInput = stdin.readLineSync();
  
  // Parse the input string to a double
  double radius = double.tryParse(radiusInput!) ?? 0.0; // Default to 0.0 if parsing fails
  
  // Calculate the area of the circle using the formula: Area = π * r^2
  double area = calculateCircleArea(radius);
  
  // Display the result
  print("The area of the circle with radius $radius is $area");
}

// Function to calculate the area of a circle
double calculateCircleArea(double radius) {
  return pi * pow(radius, 2); // π * r^2
}

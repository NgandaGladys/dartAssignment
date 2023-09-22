import 'dart:io';
import 'dart:math';

void main() {
  // Prompt the user to enter the radius of the sphere
  stdout.write("Enter the radius of the sphere: ");

  // Read the radius as a string and convert it to a double
  String? radiusInput = stdin.readLineSync();
  double radius = double.tryParse(radiusInput!) ?? 0.0;

  // Calculate the volume of the sphere
  double volume = calculateSphereVolume(radius);

  // Display the result
  print("The volume of the sphere with radius $radius is: $volume");
}

// Function to calculate the volume of a sphere
double calculateSphereVolume(double radius) {
  return (4 / 3) * pi * pow(radius, 3);
}

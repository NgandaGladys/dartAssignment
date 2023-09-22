import 'dart:io';

void main() {
  // Input: Get the month and year from the user
  print("Enter the year (e.g., 2023):");
  int year = int.parse(stdin.readLineSync()!);

  print("Enter the month (1-12):");
  int month = int.parse(stdin.readLineSync()!);

  // Validate the input
  if (month < 1 || month > 12) {
    print("Invalid month. Please enter a number between 1 and 12.");
    return;
  }

  // Create a DateTime object for the first day of the specified month and year
  DateTime firstDayOfMonth = DateTime(year, month, 1);

  // Determine the number of days in the month
  int daysInMonth = DateTime(year, month + 1, 0).day;

  // Print the calendar header
  print("Calendar for ${_getMonthName(month)} $year");
  print("Sun Mon Tue Wed Thu Fri Sat");

  // Determine the day of the week for the first day of the month (0 = Sunday, 1 = Monday, ..., 6 = Saturday)
  int firstDayOfWeek = firstDayOfMonth.weekday;

  // Print leading spaces to align the first day of the month with the correct weekday
  for (int i = 0; i < firstDayOfWeek; i++) {
    stdout.write("    ");
  }

  // Print the days of the month
  for (int day = 1; day <= daysInMonth; day++) {
    stdout.write("${day.toString().padLeft(3)} ");

    // Move to the next line if it's Saturday (6) or the last day of the month
    if ((firstDayOfWeek + day) % 7 == 0 || day == daysInMonth) {
      print("");
    }
  }
}

String _getMonthName(int month) {
  final months = [
    "January", "February", "March", "April", "May", "June", "July",
    "August", "September", "October", "November", "December"
  ];
  return months[month - 1];
}

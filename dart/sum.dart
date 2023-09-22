void main() {
  int n = 15; // Change this value to calculate the sum for positive integers
  int sum = calculateSum(n);
  print('The sum of the first $n positive integers is: $sum');
}

int calculateSum(int n) {
  if (n <= 0) {
    throw ArgumentError('n should be a positive integer.');
  }

  int sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}


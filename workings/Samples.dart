var name = 'Damola Olutoba Onikoyi';
var year = 2025;
var age = 15;
var hasGraduated = true;
var hobbies = ['Swimming', 'Football', 'Movies', 'Reading'];
var places = {
  'city': ['San Francisco'],
  'country': ['United States Of America'],
  'anotherCity': ['Paris'],
  'anotherCountry': ['France'],
};

void main() {
  print('-------------------------');
  print('Welcome to dart!');

  if (year >= 2001) {
    print('21st century');
  } else if (year >= 1901) {
    print('20th century');
  }

  for (final currHobbies in hobbies) {
    print(currHobbies);
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  while (age < 75) {
    age++;
    print(age);
  }

  int fibonacci(int n) {
    if (n == 0 || n == 1) {
      return n;
    }

    return fibonacci(n - 2) + fibonacci(n - 1);
  }

  hobbies.where((name) => name.contains('swim')).forEach(print);
  hobbies.where((name) => name.contains('Foot')).forEach(print);
}

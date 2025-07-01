var name = 'Damola Olutoba Onikoyi';
var year = 2025;
var age = 15;
var hasGraduated = true;
var hobbies = ['Swimming', 'Football', 'Movies', 'Reading', 'Coding'];
var places = {
  'city': ['San Francisco'],
  'country': ['USA'],
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
  } else {
    print('Unknown century');
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

  hobbies.where((name) => name.contains('Swim')).forEach(print);
  hobbies.where((name) => name.contains('Foot')).forEach(print);
}

int fibonacci(int n) {
  if (n == 0 || n == 1) {
    return n;
  }

  return fibonacci(n - 2) + fibonacci(n - 1);
}

enum UserRole { admin, user, guest }

enum PlanetType { terrestrial, gas, ice }

void checkAccess(UserRole role) {
  if (role == UserRole.admin) {
    print('give full access');
  } else if (role == UserRole.user) {
    print('give partial access');
  } else {
    print('no access');
  }
}

void printRole(UserRole role) {
  switch (role) {
    case UserRole.admin:
      print('Admin privileges');
      break;
    case UserRole.user:
      print('User privileges');
      break;
    case UserRole.guest:
      print('No privileges');
      break;
  }
}

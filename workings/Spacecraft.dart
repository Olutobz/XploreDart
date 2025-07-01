class Spacecraft {
  String name;
  DateTime? launchDate;

  // read-only non-final property
  int? get launchYear => launchDate?.year;

  // constructor
  Spacecraft(this.name, this.launchDate) {
    // Initialization goes here
  }

  void describe() {
    print('Spacecraft: $name');

    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('We launched in the year $launchYear, which is ($years years ago)');
    } else {
      print('Not yet launched');
    }
  }
}

void main() {
  var voyager = Spacecraft("Voyager I", DateTime(1975, 9, 6));
  voyager.describe();

  var voyager2 = Spacecraft("Voyager II", DateTime(1983, 4, 11));
  voyager2.describe();
}

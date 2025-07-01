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
      print('Launched $launchYear ($years years ago)');
    } else {
      print('Not yet launched');
    }
  }
}

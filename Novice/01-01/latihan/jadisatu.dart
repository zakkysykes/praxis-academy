
main() {
  print('Hello, World!');

//variables
var name ='Voyager I';

var year = 1997;

var antennaDiameter = 3.7;

var flybyObjects = ['Jupiter','Saturn','Uranus','Neptune'];

var image = { 
  'tags' : ['saturn'],
  'url' : '//path/to/saturn.jpg'
};

var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
voyager.describe();

var voyager3 = Spacecraft.unlaunched('Voyager III');
voyager3.describe();

var result = fibonacci(20);

print(name);
print(year);
print(antennaDiameter);
print(flybyObjects);
print(image);

// control flow statements
if (year >= 2001) {
        print('21st century');}
    else if (year >= 1901) {
        print('20th century');}

    for (var object in flybyObjects) {
      print(object);
    }

    for (int month = 1; month <= 12; month++) {
      print(month);
    }
    while (year < 2017) {
      year += 1;
    }


//functions
flybyObjects.where((name) => name.contains('turn')).forEach(print);
print(result);
}

//functions
int fibonacci(int n) {
    if (n == 0 || n == 1) return n;
    return fibonacci(n-1) + fibonacci(n-2);
}

//classes
class Spacecraft {
    String name;
    DateTime launchDate;

    Spacecraft(this.name, this.launchDate){

    }

    Spacecraft.unlaunched(String name) : this(name, null);

    int get launchYear =>
      launchDate?.year;

      void describe() {
        print('Spacecraft: $name');
        if (launchDate != null) {
          int years = 
            DateTime.now().difference(launchDate).inDays ~/
            365;
              print('Launched: $launchYear ($years years ago)');

        } else{
          print('Unlaunched');
        }
      }
    }
//inherintance
class Orbiter extends Spacecraft {
  num altitude;
  Orbiter(String name, DateTime launchDate, this.altitude)
      : super(name, launchDate);
}

//mixins
class Piloted {
  int astronauts = 1;
  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}
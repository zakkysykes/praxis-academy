main(){

var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
voyager.describe();

var voyager3 = Spacecraft.unlaunched('Voyager III');
voyager3.describe();

}
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
    
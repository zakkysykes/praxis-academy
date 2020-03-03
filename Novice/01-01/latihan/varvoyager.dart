main(){
  var Spacecraft;
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
voyager.describe();

var voyager3 = Spacecraft.unlaunched('Voyager III');
voyager3.describe();

int fibonacci(int n) {
    if (n == 0 || n == 1) return n;
    return fibonacci(n-1) + fibonacci(n-2);
}

var result = fibonacci(20);
}
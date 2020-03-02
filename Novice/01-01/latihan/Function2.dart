main(){
var flybyObjects = ['Jupiter','Saturn','Uranus','Neptune'];
flybyObjects.where((name) => name.contains('turn')).forEach(print);

}

// this is a normal, one-line comment.
/// this is a documentation comment, used to document linraries,
/// classes, and their members. tools like IDEs and dartdoc treat
/// doc comments specially
/* Comments like these are also supported. */

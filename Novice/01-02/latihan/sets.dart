void main(){
    /*var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
    */

    /*
    var names = <String>{};
    */
    
    var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
    var elements = <String>{};
    elements.add('fluorine');
    elements.addAll(halogens);

    print(elements);
}
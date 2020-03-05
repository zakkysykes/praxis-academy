// Sets

main(){

    var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
    print(halogens);

    var names = <String>{};
    print(names);    

    //method add dan addAll
    var elements = <String>{};
    elements.add('fluorine');
    elements.addAll(halogens);
    //menggunakan length untuk mendapatkan item nomor
    assert(elements.length == 5);
    print(elements);

    //menambahkan const
    final constantSet = const {
      'fluorine',
      'chlorine',
      'bromine',
      'iodine',
      'astatine',
    };
    print(constantSet);
}
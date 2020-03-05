class aku {
    String _nama;
    int umur;

aku(this.nama, this.umur);

  String get namahormat {
    return 'Mr.$nama';
  }

  set namahormat(String newnama) {
    nama = newnama;
  }


  aku.baru() {
    nama = 'jeki';
    umur = 20;
  }

  bark(){
  print('aha ihi');
}

_hiddenMethod() {
    print('I can only be called internally!');
  }
}

abstract class Abstractaku {
  void bark();

  void_hiddenMethod();
}




main (){
    aku a = new aku('siapa',10);
  a.namahormat = 'Mr.Jeki';
  print(a.namahormat);
}

class aku {
    String nama;
    int umur;

aku(this.nama, this.umur);

  aku.baru() {
    nama = 'jeki';
    umur = 20;
  }

}

class kamu extends aku {
    kamu(String nama, int umur): super(nama, umur);
}


main (){
    kamu k = new kamu('siapa',00);
  print(k.nama);
}

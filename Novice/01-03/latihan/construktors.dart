class aku {
    String nama;
    int umur;

aku(this.nama, this.umur);

  aku.baru() {
    nama = 'jeki';
    umur = 20;
  }

}


main (){
    aku a = new aku.baru();
  print(a.nama);
}

class aku {
    String nama;
    int umur;

aku(this.nama, this.umur);

  aku.baru() {
    nama = 'jeki';
    umur = 20;
  }

  bark(){
  print('aha ihi');
}

}




main (){
    aku a = new aku('siapa',10);
  a.bark();
}

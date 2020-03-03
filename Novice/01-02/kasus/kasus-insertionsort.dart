void main()
{
    var angka = [98, 90, 67, 1, 5, 7, 40];
    for (var i = 0; i<angka.length; i++) {
        var key = angka[i];
        var j = i;
            while (j > 0 && angka[j - 1] > key) {
                angka[j]= angka[j-1];
                j=j-1;
            }
            angka[j]=key;
    }
    print(angka);
}
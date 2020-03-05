main(){

    //* List
    //var list =[1,2,3];
    //print(list);

    var list = [1,2,3];
    assert(list.length == 3);
    assert(list[1] == 1);

    list[1] = 1;
    assert(list[1] == 1);

    print(list);
}
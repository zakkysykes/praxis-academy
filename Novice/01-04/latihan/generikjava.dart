class GenericClass<T> {
    T, ob;

    GenericClass(this.T, this.ob);
    toString() => " Type of T is ${T}, ${ob} ?";
}

T get.ob() {
  return ob;
}
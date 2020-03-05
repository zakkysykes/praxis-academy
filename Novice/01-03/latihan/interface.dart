main() {
    AturPrinter ap = new AturPrinter();
    ap.print_data();
}
class Printer {
        void print_data() {
                print("______Printing Data______");
        }
}
class AturPrinter implements Printer {
    void print_data() {
            print("______Printing sedang di Atur______");
    }
}
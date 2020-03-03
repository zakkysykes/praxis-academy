void main(){
    class Piloted {
        int astrounauts = 1;
        void desribeCrew() {
          print('Number of astronauts: $astrounauts');
        }
    }
  }
  class PilotedCraft extends Spacecraft with Piloted {
  // ···
}
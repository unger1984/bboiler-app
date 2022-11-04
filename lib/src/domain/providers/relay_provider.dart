abstract class RelayProvider {
  void on();
  void off();
  bool status();
  void dispose();
  void changePin(int pin);
  int getPin();
}

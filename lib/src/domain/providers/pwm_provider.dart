abstract class PwmProvider {
  void setPower(double power);
  double getPower();
  void dispose();
  void changePin(int pin);
  int getPin();
}

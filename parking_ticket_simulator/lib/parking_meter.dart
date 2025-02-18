class ParkingMeter {
  // Private instance variable
  int _minutesPurchased;

  // Constructors
  ParkingMeter(this._minutesPurchased);

  // Getters
  int get minutesPurchased => _minutesPurchased;

  // Setters
  set minutesPurchased(int minutesPurchased) =>
      _minutesPurchased = minutesPurchased;

  // toString method
  @override
  String toString() {
    return 'ParkingMeter{minutesPurchased: $_minutesPurchased}';
  }
}

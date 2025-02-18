class ParkedCar {
  // Private instance variables
  String _make;
  String _model;
  String _color;
  String _licenseNumber;
  int _minutesParked;

  // Constructors
  ParkedCar(this._make, this._model, this._color, this._licenseNumber,
      this._minutesParked);

  // Getters
  String get make => _make;
  String get model => _model;
  String get color => _color;
  String get licenseNumber => _licenseNumber;
  int get minutesParked => _minutesParked;

  // Setters
  set make(String make) => _make = make;
  set model(String model) => _model = model;
  set color(String color) => _color = color;
  set licenseNumber(String licenseNumber) => _licenseNumber = licenseNumber;
  set minutesParked(int minutesParked) => _minutesParked = minutesParked;

  // toString method
  @override
  String toString() {
    return 'ParkedCar{make: $_make, model: $_model, color: $_color, licenseNumber: $_licenseNumber, minutesParked: $_minutesParked}';
  }
}

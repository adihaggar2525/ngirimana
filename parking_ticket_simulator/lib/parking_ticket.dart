import 'parked_car.dart';

class ParkingTicket {
  // Private instance variables
  final ParkedCar _car;
  late double _fine;
  final String _officerName;
  final String _badgeNumber;

  // Constructor with proper initialization
  ParkingTicket(this._car, this._officerName, this._badgeNumber) {
    _calculateFine();
  }

  // Getters
  ParkedCar get car => _car;
  double get fine => _fine;
  String get officerName => _officerName;
  String get badgeNumber => _badgeNumber;

  // Method to calculate fine
  void _calculateFine() {
    int minutesOverdue =
        _car.minutesParked - 60; // Assuming 60 minutes is the limit
    _fine = (minutesOverdue <= 0)
        ? 0.0
        : 25.0 + ((minutesOverdue / 60).ceil() * 10.0);
  }

  // toString method
  @override
  String toString() {
    return 'ParkingTicket{car: $_car, fine: \$_fine, officerName: $_officerName, badgeNumber: $_badgeNumber}';
  }
}

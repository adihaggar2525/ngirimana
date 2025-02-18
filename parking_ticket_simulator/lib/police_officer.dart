import 'parking_ticket.dart';
import 'parked_car.dart';
import 'parking_meter.dart';

class PoliceOfficer {
  final String _name;
  final String _badgeNumber;

  PoliceOfficer(this._name, this._badgeNumber);

  // Method to issue a parking ticket
  ParkingTicket? issueTicket(ParkedCar car, ParkingMeter meter) {
    int minutesOverdue = car.minutesParked - meter.minutesPurchased;

    if (minutesOverdue > 0) {
      double fine = 25.0 + ((minutesOverdue / 60).ceil() * 10.0);
      return ParkingTicket(car, _name, _badgeNumber);
    }

    return null; // No ticket issued if no overtime
  }

  @override
  String toString() {
    return 'PoliceOfficer{name: $_name, badgeNumber: $_badgeNumber}';
  }
}

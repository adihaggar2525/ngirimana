import 'parked_car.dart';
import 'parking_meter.dart';
import 'parking_ticket.dart';
import 'police_officer.dart';

void main() {
  // Create a parked car
  ParkedCar car = ParkedCar('Toyota', 'Corolla', 'Red', 'ABC123', 90);

  // Create a parking meter with 60 minutes purchased
  ParkingMeter meter = ParkingMeter(60);

  // Create a police officer
  PoliceOfficer officer = PoliceOfficer('John Doe', '1234');

  // Issue a parking ticket if the car's time has expired
  ParkingTicket? ticket = officer.issueTicket(car, meter);

  if (ticket != null) {
    print('Parking Ticket Issued:');
    print(ticket);
  } else {
    print('No parking ticket issued. Car is within the time limit.');
  }
}

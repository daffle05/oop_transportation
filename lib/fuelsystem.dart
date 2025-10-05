// lib/fuelsystem.dart
// Member 2: FuelSystem part class for the Transportation container

class FuelSystem {
  String fuelType;      // type of fuel used
  double fuelLevel;     // amount of fuel in liters

  FuelSystem({this.fuelType = 'Gasoline', this.fuelLevel = 50.0});

  void refuel(double liters) {
    fuelLevel += liters;
    print('[FuelSystem] Refueled $liters liters. Current level: $fuelLevel L');
  }

  void checkFuel() {
    print('[FuelSystem] Current fuel level: $fuelLevel L');
  }
}

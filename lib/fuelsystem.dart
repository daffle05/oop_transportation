class FuelSystem {
  String fuelType;      
  double fuelLevel;    

  FuelSystem({this.fuelType = 'Gasoline', this.fuelLevel = 50.0});

  void refuel(double liters) {
    fuelLevel += liters;
    print('[FuelSystem] Refueled $liters liters. Current level: $fuelLevel L');
  }

  void checkFuel() {
    print('[FuelSystem] Current fuel level: $fuelLevel L');
  }
}

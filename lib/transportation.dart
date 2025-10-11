import 'fuelsystem.dart';

abstract class Engine {
  void start();
  void stop();
}

abstract class Navigation {
  void setDestination(String destination);
}

class Transportation {
  final Engine engine;
  final Navigation navigation;
  final FuelSystem fuelSystem; 

  Transportation({
    required this.engine,
    required this.navigation,
    required this.fuelSystem,
  });

  void startTrip(String destination) {
    print('[Transportation] Starting trip...');
    fuelSystem.checkFuel();             
    engine.start();                      
    navigation.setDestination(destination);
    print('[Transportation] Trip started to $destination!\n');
  }

  void stopTrip() {
    print('[Transportation] Stopping trip...');
    engine.stop();
    navigation.setDestination('');
    print('[Transportation] Trip stopped.\n');
  }

  void refuelVehicle(double liters) {
    print('[Transportation] Refueling vehicle...');
    fuelSystem.refuel(liters);         
    print('[Transportation] Refueling complete.\n');
  }
}

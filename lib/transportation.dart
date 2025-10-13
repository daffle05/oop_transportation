import 'fuelsystem.dart';

// --- Engine Interface ---
abstract class Engine {
  void start();
  void stop();
}

// --- Navigation Interface ---
abstract class Navigation {
  void setDestination(String destination);
}

// --- Transportation Class ---
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
    engine.start();
    navigation.setDestination(destination);
  }

  void stopTrip() {
    print('[Transportation] Stopping trip...');
    engine.stop();
    navigation.setDestination('');
  }

  void refuelVehicle(double liters) {
    fuelSystem.refuel(liters);
  }
}

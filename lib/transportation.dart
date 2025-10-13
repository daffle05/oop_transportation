<<<<<<< HEAD
import 'fuelsystem.dart';
=======
import 'package:oop_transportation/fuelsystem.dart';
>>>>>>> dc682f0 (Fix main.dart and add fuel system integration)

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

  Transportation({required this.engine, required this.navigation, required FuelSystem fuelSystem});

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
    print('[Transportation] Refueling vehicle with $liters liters...');
  }

  void refuelVehicle(int i) {}
}

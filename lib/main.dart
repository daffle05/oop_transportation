// lib/main.dart
import 'transportation.dart' as trans;
import 'fuelsystem.dart';
import 'engine.dart' as eng;

<<<<<<< HEAD
class SimpleNavigation implements trans.Navigation {
=======
// --- Simple implementations for Engine and Navigation ---
class SimpleEngine implements Engine {
  @override
  void start() => print('[Engine] Engine started.');

  @override
  void stop() => print('[Engine] Engine stopped.');
}

class SimpleNavigation implements Navigation {
>>>>>>> dc682f0 (Fix main.dart and add fuel system integration)
  @override
  void setDestination(String destination) {
    if (destination.isEmpty) {
      print('[Navigation] Destination cleared.');
    } else {
      print('[Navigation] Destination set to $destination.');
    }
  }
}

// --- Main function ---
void main() {
<<<<<<< HEAD
  final engine = eng.EngineImpl(type: 'Diesel', horsepower: 120);
  final navigation = SimpleNavigation();
  final fuelSystem = FuelSystem(fuelType: 'Diesel', fuelLevel: 25.0);

  final transport = trans.Transportation(
=======
  // Initialize components
  final engine = SimpleEngine();
  final navigation = SimpleNavigation();
  final fuelSystem = FuelSystem(fuelType: 'Diesel', fuelLevel: 25.0);

  // Create Transportation with all dependencies
  final transport = Transportation(
>>>>>>> dc682f0 (Fix main.dart and add fuel system integration)
    engine: engine,
    navigation: navigation,
    fuelSystem: fuelSystem,
  );

  // --- Demo Start Trip ---
  print('--- Demo: Start Trip ---');
  transport.startTrip('City Center');

  // --- Demo Refuel ---
  print('--- Demo: Refuel ---');
  transport.refuelVehicle(20);

  // --- Demo Stop Trip ---
  print('--- Demo: Stop Trip ---');
  transport.stopTrip();
}

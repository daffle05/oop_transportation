// lib/main.dart
import 'transportation.dart';
import 'fuelsystem.dart';
import 'engine.dart';

// Simple implementations for Engine and Navigation
class SimpleEngine implements Engine {
  @override
  void start() => print('[Engine] Engine started.');

  @override
  void stop() => print('[Engine] Engine stopped.');
}

class SimpleNavigation implements Navigation {
  @override
  void setDestination(String destination) {
    if (destination.isEmpty) {
      print('[Navigation] Destination cleared.');
    } else {
      print('[Navigation] Destination set to $destination.');
    }
  }
}

void main() {
  // Create instances
  final engine = SimpleEngine();
  final navigation = SimpleNavigation();
  final fuelSystem = FuelSystem(fuelType: 'Diesel', fuelLevel: 25.0);

  final transport = Transportation(
    engine: engine,
    navigation: navigation,
    fuelSystem: fuelSystem,
  );

  // Demo
  print('--- Demo: Start Trip ---');
  transport.startTrip('City Center');

  print('--- Demo: Refuel ---');
  transport.refuelVehicle(20.0); // Correct method name

  print('--- Demo: Stop Trip ---');
  transport.stopTrip();
}

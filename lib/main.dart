// lib/main.dart
import 'transportation.dart' as trans;
import 'fuelsystem.dart';
import 'engine.dart' as eng;

class SimpleNavigation implements trans.Navigation {
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
  final engine = eng.EngineImpl(type: 'Diesel', horsepower: 120);
  final navigation = SimpleNavigation();
  final fuelSystem = FuelSystem(fuelType: 'Diesel', fuelLevel: 25.0);

  final transport = trans.Transportation(
    engine: engine,
    navigation: navigation,
    fuelSystem: fuelSystem,
  );

  print('--- Demo: Start Trip ---');
  transport.startTrip('City Center');

  print('--- Demo: Refuel ---');
  transport.refuelVehicle(20);

  print('--- Demo: Stop Trip ---');
  transport.stopTrip();
}

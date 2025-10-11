import 'transportation.dart';
import 'fuelsystem.dart';

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
  final engine = SimpleEngine();
  final navigation = SimpleNavigation();
  final fuelSystem = FuelSystem(fuelType: 'Diesel', fuelLevel: 25.0);

  final transport = Transportation(
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

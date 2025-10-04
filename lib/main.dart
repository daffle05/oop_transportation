import 'transportation.dart';


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
  final transport = Transportation(
    engine: SimpleEngine(),
    navigation: SimpleNavigation(),
  );

  transport.startTrip('City Center');
  transport.stopTrip();
}

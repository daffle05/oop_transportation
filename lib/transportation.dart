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

  Transportation({required this.engine, required this.navigation});

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
}

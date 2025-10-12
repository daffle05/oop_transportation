// lib/engine.dart
import 'transportation.dart';

// Member 3's part — implements Engine interface from transportation.dart
class EngineImpl implements Engine {
  final String type;
  final int horsepower;

  EngineImpl({required this.type, required this.horsepower});

  @override
  void start() {
    print('[Engine] $type engine with $horsepower HP started.');
  }

  @override
  void stop() {
    print('[Engine] $type engine stopped.');
  }
}


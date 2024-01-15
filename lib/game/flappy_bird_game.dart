import 'package:flame/game.dart';
import 'package:pixel_game/components/background.dart';
import 'package:pixel_game/components/bird.dart';
import 'package:pixel_game/components/ground.dart';

class FlappyBirdGame extends FlameGame {
  late Bird bird;
  @override
  Future<void> onLoad() async {
    add(Background());
    // addAll([
    //   Background(),
    //   Ground(),
    //   bird = Bird(),
    // ]);
  }
}

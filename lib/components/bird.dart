import 'package:flame/components.dart';
import 'package:pixel_game/game/assets.dart';
import 'package:pixel_game/game/flappy_bird_game.dart';

import 'bird_movement.dart';

class Bird extends SpriteGroupComponent<BirdMovement>
    with HasGameRef<FlappyBirdGame> {
  @override
  Future<void> onLoad() async {
    final birdMidFlap = await gameRef.loadSprite(Assets.birdMidFlap);
    final birdUpFlap = await gameRef.loadSprite(Assets.birdUpFlap);
    final birdLowFlap = await gameRef.loadSprite(Assets.birdDownFlap);

    size = Vector2(50, 40);
    current = BirdMovement.middle;
    sprites = {
      BirdMovement.middle: birdMidFlap,
      BirdMovement.up: birdUpFlap,
      BirdMovement.down: birdLowFlap,
    };
  }
}

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/parallax.dart';
import 'package:pixel_game/game/flappy_bird_game.dart';

import '../game/assets.dart';

class Ground extends ParallaxComponent<FlappyBirdGame> {
  @override
  Future<void> onLoad() async {
    final ground = await Flame.images.load(Assets.ground);
    parallax = Parallax([
      ParallaxLayer(
        ParallaxImage(ground, fill: LayerFill.none),
      )
    ]);
  }

  @override
  void update(double dt) {
    super.update(dt);
  }
}

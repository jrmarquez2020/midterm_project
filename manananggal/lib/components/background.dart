import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:manananggal/game/assets.dart';
import 'package:manananggal/game/flappymanananggal.dart';

class Background extends SpriteComponent with HasGameRef<FlappyManananggal> {
  Background();

  @override
  Future<void> onLoad() async {
    final background = await Flame.images.load(Assets.backgorund);
    size = gameRef.size;
    sprite = Sprite(background);
  }
}

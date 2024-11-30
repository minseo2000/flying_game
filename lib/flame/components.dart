import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class FlyingGameBackground extends SpriteComponent with HasGameRef{

  @override
  Future<void> onLoad() async{
    super.onLoad();
    sprite = await gameRef.loadSprite('main_bg.png');
    size = Vector2(gameRef.size.x, gameRef.size.y);
  }
}

class PlayerPlane extends SpriteComponent with HasGameRef, CollisionCallbacks{

  static const double playerSize = 60.0;
  final Function hitAction;
  PlayerPlane({
    required position,
    required this.hitAction,
  }) : super(size: Vector2.all(playerSize), position: position);

  late ShapeHitbox hitbox;

  @override
  Future<void> onLoad()  async{
    super.onLoad();
    sprite = await gameRef.loadSprite('fly_entity2.png');
    position = position;

    final Paint defaultPaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke;
    hitbox = CircleHitbox()
      ..paint = defaultPaint
      ..renderShape = true;
    add(hitbox);
  }

  @override
  void onCollision(Set<Vector2> points, PositionComponent other){
    super.onCollision(points, other);
    if(other is ScreenHitbox){

    }else if(other is EnemyPlain){
      hitAction();
    }
  }


}

class EnemyPlain extends SpriteComponent with HasGameRef, CollisionCallbacks{

  static const double playerSize = 60.0;
  final Function hitAction;
  EnemyPlain({
    required position,
    required this.hitAction,
  }) : super(size: Vector2.all(playerSize), position: position);

  late ShapeHitbox hitbox;

  @override
  Future<void> onLoad()  async{
    super.onLoad();
    sprite = await gameRef.loadSprite('fly_entity2.png');
    position = position;

    final Paint defaultPaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke;
    hitbox = CircleHitbox()
      ..paint = defaultPaint
      ..renderShape = true;
    add(hitbox);
  }

  @override
  void onCollision(Set<Vector2> points, PositionComponent other){
    super.onCollision(points, other);
    if(other is ScreenHitbox){

    }else if(other is EnemyPlain){
      hitAction();
    }
  }


}

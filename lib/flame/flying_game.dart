import 'package:flame/game.dart';
import 'components.dart';

class FlyingGame extends FlameGame{

  final FlyingGameBackground _bg = FlyingGameBackground();
  late PlayerPlane _player;

  // 게임 인스턴스가 실행될때 실행되는 함수
  @override
  Future<void> onLoad() async{

    await add(_bg);
    _player = PlayerPlane(position: Vector2(size.x/2-30, size.y - 100), hitAction: (){});
    await add(_player);
    super.onLoad();

  }

  //업데이트 되는 매 프레임마다 실행되는 로직
  @override
  void update(double dt) async{
    super.update(dt);
  }


  // 인스턴스 해제될 떄 실행되는 함수
  @override
  void onRemove(){
    super.onRemove();
  }

}
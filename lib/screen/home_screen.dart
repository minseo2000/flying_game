import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:fly_game_by_flame/flame/flying_game.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: GameWidget(
          game: FlyingGame(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ps5_games/env/env.dart';
import 'package:ps5_games/presentation/binding/game_binding.dart';
import 'package:ps5_games/presentation/controller/game_controller.dart';

class HomePage extends GetView<GameBinding> {
  HomePage({super.key});

  final GameController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => ListView.builder(
            itemCount: _controller.games.length,
            itemBuilder: (context, index) {
              return Container(
                child: Text(_controller.games[index].name),
              );
            })));
  }
}

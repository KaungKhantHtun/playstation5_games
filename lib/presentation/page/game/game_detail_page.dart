import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ps5_games/presentation/controller/game_controller.dart';

class GameDetailPage extends StatelessWidget {
  GameDetailPage({super.key});

  GameController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    controller.getGameDetail(int.parse(Get.parameters['id'] ?? "0"));
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          child: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("${controller.gameDetail.value.name}")],
        ),
      )),
    );
  }
}

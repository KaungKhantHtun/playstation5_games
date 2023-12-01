import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:ps5_games/core/util/const/label_const.dart';
import 'package:ps5_games/presentation/controller/game_controller.dart';
import 'package:ps5_games/presentation/widget/game_widget.dart';

class GameListPage extends StatefulWidget {
  GameListPage({super.key});

  @override
  State<GameListPage> createState() => _GameListPageState();
}

class _GameListPageState extends State<GameListPage> {
  GameController controller = Get.find();

  late ScrollController scrollController;

  bool isLoading = false;
  bool stopLoading = false;

  @override
  void initState() {
    scrollController = ScrollController()..addListener(scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void scrollListener() {
    if (scrollController.offset >=
            scrollController.position.maxScrollExtent -
                MediaQuery.of(context).size.height &&
        !isLoading) {
      isLoading = true;
      controller.fetchGames().then((_) {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(appName),
        ),
        body: Obx(() => MasonryGridView.builder(
              controller: scrollController,
              itemCount: controller.games.length,
              gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                //return Text(controller.games[index].name);
                String imgUrl = controller.games[index].backgroundImage ?? "";
                String name = controller.games[index].name;
                String releaseDate = controller.games[index].released;
                int metacritic = controller.games[index].metacritic;
                var parameters = <String, String>{
                  "imgUrl": imgUrl,
                  "name": name,
                  "releaseDate": releaseDate,
                  "metacritic": metacritic.toString(),
                };
                return GestureDetector(
                  onTap: () => Get.toNamed(
                      "/detail/${controller.games[index].id}",
                      parameters: parameters),
                  child: GameWidget(
                    imgUrl: imgUrl,
                    name: name,
                    releaseDate: releaseDate,
                    metacriticScore: controller.games[index].metacritic,
                  ),
                );
              },
            )));
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:get/get.dart';
import 'package:ps5_games/core/util/const/label_const.dart';
import 'package:ps5_games/presentation/controller/game_controller.dart';

class GameDetailPage extends StatelessWidget {
  GameDetailPage({super.key});

  GameController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    String? name = Get.parameters["name"];
    String? imgUrl = Get.parameters["imgUrl"];
    String? releaseDate = Get.parameters["releaseDate"];
    String? metacriticScore = Get.parameters["metacriticScore"];
    controller.getGameDetail(int.parse(Get.parameters['id'] ?? "0"));
    return Scaffold(
        appBar: AppBar(
          title: const Text("Detail"),
        ),
        body: Obx(
          () => controller.isLoading.value
              ? const Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 24, horizontal: 16),
                    decoration: BoxDecoration(
                        // color: Color(0xff202020),
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 280,
                          width: double.infinity,
                          child: imgUrl != null
                              ? ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(24),
                                      bottomRight: Radius.circular(24)),
                                  child: CachedNetworkImage(
                                    imageUrl: imgUrl,
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                    fit: BoxFit.cover,
                                  ),
                                )
                              : const SizedBox(),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                          ),
                          child: Text(
                            name ?? "-",
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 16.0,
                            ),
                            child: HtmlWidget(
                                controller.gameDetail.value.description)
                            //  Text(
                            //   controller.gameDetail.value.description,
                            //   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            // ),
                            ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                          ),
                          child: Row(
                            children: [
                              const Text(
                                "$genresLabel: ",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white70),
                              ),
                              Text(
                                List<String>.from(controller
                                    .gameDetail.value.genres
                                    .map((e) => e.name)).toList().join(", "),
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                          ),
                          child: Row(
                            children: [
                              const Text(
                                "$releaseDateLabel: ",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white70),
                              ),
                              Text(
                                releaseDate ?? "-",
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                          ),
                          child: Row(
                            children: [
                              const Text(
                                "$metacriticScoreLabel: ",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white70),
                              ),
                              Text(
                                metacriticScore ?? "-",
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "$developerLabel: ",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white70),
                              ),
                              Flexible(
                                child: Text(
                                  List<String>.from(controller
                                      .gameDetail.value.developers
                                      .map((e) => e.name)).toList().join(", "),
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "$publishersLabel: ",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white70),
                              ),
                              Flexible(
                                child: Text(
                                  List<String>.from(controller
                                      .gameDetail.value.publishers
                                      .map((e) => e.name)).toList().join(", "),
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "$platformsLabel: ",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white70),
                              ),
                              Flexible(
                                child: Text(
                                  List<String>.from(controller
                                          .gameDetail.value.platforms
                                          .map((e) => e.platform.name))
                                      .toList()
                                      .join(", "),
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        ));
  }
}

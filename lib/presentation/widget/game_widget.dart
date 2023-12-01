import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ps5_games/core/util/const/label_const.dart';

class GameWidget extends StatelessWidget {
  GameWidget({
    super.key,
    required this.imgUrl,
    required this.name,
    required this.releaseDate,
    required this.metacriticScore,
  });

  String? imgUrl;
  String name;
  String releaseDate;
  int? metacriticScore;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: const Color(0xff202020),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 160,
            width: double.infinity,
            child: imgUrl != null
                ? ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(16),
                        topLeft: Radius.circular(16)),
                    child: CachedNetworkImage(
                      imageUrl: imgUrl!,
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
              horizontal: 4,
            ),
            child: Text(
              name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                const Text(
                  "$releaseDateLabel: ",
                  style: TextStyle(fontSize: 14, color: Colors.white70),
                ),
                Text(
                  releaseDate,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 4.0,
              bottom: 16.0,
              left: 4.0,
              right: 4.0,
            ),
            child: Row(
              children: [
                const Text(
                  "$metacriticScoreLabel: ",
                  style: TextStyle(fontSize: 14, color: Colors.white70),
                ),
                Text(
                  "${metacriticScore == 0 ? '-' : metacriticScore}",
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

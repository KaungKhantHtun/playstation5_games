import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Color(0xff202020), borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 160,
            width: double.infinity,
            child: imgUrl != null
                ? ClipRRect(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        topLeft: Radius.circular(16)),
                    child: Image.network(
                      imgUrl!,
                      fit: BoxFit.cover,
                    ),
                  )
                : SizedBox(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 4,
            ),
            child: Text(
              name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Text(
                  "$releaseDateLabel: ",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Text(
                  releaseDate,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
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
                Text(
                  "$metacriticScoreLabel: ",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Text(
                  "${metacriticScore ?? 0}",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

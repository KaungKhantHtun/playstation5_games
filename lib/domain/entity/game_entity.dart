class GameEntity {
  int id;
  String name;
  String released;
  int metacritic;

  String? backgroundImage;

  GameEntity({
    required this.id,
    required this.name,
    required this.released,
    required this.metacritic,
    required this.backgroundImage,
  });
}

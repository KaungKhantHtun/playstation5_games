import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:ps5_games/core/util/const/const_util.dart';
import 'package:ps5_games/core/util/failure.dart';
import 'package:ps5_games/data/model/game_detail_model.dart';
import 'package:ps5_games/data/model/game_model.dart';
import 'package:ps5_games/data/remote_datasource/game_remote_datasource.dart';
import 'package:ps5_games/data/retrofit/api_client.dart';
import 'package:ps5_games/env/env.dart';

class GameRemoteDataSourceImpl implements GameRemoteDataSource {
  String _handleError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionError:
        return "Connection Error";
      case DioExceptionType.connectionTimeout:
        return "Connection Timeout";
      case DioExceptionType.sendTimeout:
        return "Send Timeout";
      case DioExceptionType.receiveTimeout:
        return "Receive Timeout";

      case DioExceptionType.badResponse:
        if (error.response != null &&
            error.response?.statusCode != null &&
            error.response?.statusMessage != null) {
          return error.response?.statusMessage ?? "";
        } else {
          return "Something went Wrong";
        }

      default:
        return "Something went Wrong";
    }
  }

  @override
  Future<Either<Failure, List<GameModel>>> fetchGames(
      int page, String startDateAndEndDate) async {
    try {
      ResponseData responseData = await ApiClient(
        Dio(
          BaseOptions(contentType: "application/json"),
        ),
      ).fetchGames(
        page,
        pageSize,
        ps5PlatformId,
        startDateAndEndDate,
        ordering,
        Env.apiKey,
      );

      return Right(responseData.results);
    } catch (e) {
      if (e is DioException) {
        return Left(Failure(_handleError(e)));
      }
    }
    return Left(Failure("ERROR"));
  }

  @override
  Future<Either<Failure, GameDetailModel>> getGameDetail(int id) async {
    try {
      GameDetailModel gameDetailModel = await ApiClient(
        Dio(
          BaseOptions(contentType: "application/json"),
        ),
      ).getGameDetail(
        id,
        Env.apiKey,
      );

      return Right(gameDetailModel);
    } catch (e) {
      if (e is DioException) {
        return Left(Failure(_handleError(e)));
      }
    }
    return Left(Failure("ERROR"));
  }
}

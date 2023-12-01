import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ps5_games/presentation/binding/game_binding.dart';
import 'package:ps5_games/presentation/page/game/game_detail_page.dart';
import 'package:ps5_games/presentation/page/game/game_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PlayStation5 Games',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: const Color(0xff202020),
          centerTitle: false,
          titleTextStyle: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        scaffoldBackgroundColor: const Color(0xff151515),
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(),
          bodyLarge: TextStyle(),
        ).apply(
          bodyColor: Colors.white,
          displayColor: Colors.blue,
        ),
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => GameListPage(),
          binding: GameBinding(),
        ),
        GetPage(
          name: '/detail/:id',
          page: () => GameDetailPage(),
          binding: GameBinding(),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ps5_games/presentation/binding/game_binding.dart';
import 'package:ps5_games/presentation/page/home_page.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
          binding: GameBinding(),
        ),
      ],
    );
  }
}

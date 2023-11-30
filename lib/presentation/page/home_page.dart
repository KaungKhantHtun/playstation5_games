import 'package:flutter/material.dart';
import 'package:ps5_games/env/env.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(Env.apiKey),
      ),
    );
  }
}

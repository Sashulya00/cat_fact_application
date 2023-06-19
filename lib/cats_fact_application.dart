import 'package:cat_fact_application/presentation/cats_fact_screen/cats_fact_screen.dart';
import 'package:flutter/material.dart';

class CatsFactApplication extends StatelessWidget {
  const CatsFactApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CatsFactApplication',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),
        useMaterial3: true,
      ),
      home: const CatsFactScreen(),
    );
  }
}

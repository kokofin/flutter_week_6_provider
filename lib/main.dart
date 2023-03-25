import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_week_6_provider/models/counter_model.dart';
import 'package:flutter_week_6_provider/ui/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: MaterialApp(
        title: 'My Provider Demo dengan Switch',
        theme: ThemeData.dark( ),
        home: const HomeScreen(),
      ),
    );
  }
}

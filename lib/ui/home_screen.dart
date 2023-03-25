import 'package:flutter_week_6_provider/models/counter_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_week_6_provider/ui/counter_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Provider App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<CounterModel>(
              builder: (context, counter, child) {
                return CounterWidget(
                  isSwitchedOn: counter.isSwitchedOn,
                );
              },
            ),
            const SizedBox(height: 16),
            Consumer<CounterModel>(
              builder: (context, counter, child) {
                return Switch(
                  value: counter.isSwitchedOn,
                  onChanged: (value) {
                    counter.toggleSwitch();
                  },
                  activeTrackColor: Colors.lightGreenAccent,
                  activeColor: Colors.green,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

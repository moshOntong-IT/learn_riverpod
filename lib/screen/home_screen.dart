import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/providers.dart';

import 'decrement_screen.dart';

///HomeScreen widget
class HomeScreen extends ConsumerWidget {
  HomeScreen({Key? key}) : super(key: key);

  Future<void> _goToDecrementScreen(BuildContext context, int counter) async {
    Navigator.push<int>(context,
        MaterialPageRoute(builder: (context) => const DecrementScreen()));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterControllerProvider).counter;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$counter',
              style: const TextStyle(fontSize: 100),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(counterControllerProvider).incrementCounter();
              },
              child: const Text(
                'Increment',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                _goToDecrementScreen(context, counter);
              },
              child: const Text(
                "Go to Decrement Screen",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

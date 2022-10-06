import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/providers.dart';

class DecrementScreen extends ConsumerWidget {
  const DecrementScreen({super.key});

  void _back(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterControllerProvider).counter;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Decrement Screen'),
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
                ref.read(counterControllerProvider).decrementCounter();
              },
              child: const Text(
                'Decrement',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                _back(context);
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

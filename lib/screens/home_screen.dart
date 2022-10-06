import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/provider.dart';

import 'decrement_screen.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  void goToNewScreen(BuildContext context) {
    // method()
    Navigator.push<int>(
      context,
      MaterialPageRoute(
        builder: (context) => const DecrementScreen(),
      ),
    );
  }

  /// home_screen = snake case
  /// HomeScreen
  /// homeScreen

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleName = ref.watch(titleProvider);
    final counter = ref.watch(counterProvider).counter;
    return Scaffold(
      appBar: AppBar(
        title: Text(titleName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style: const TextStyle(color: Colors.black, fontSize: 50),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(counterProvider).increment();
              },
              child: const Text('Incremeent'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  goToNewScreen(context);
                },
                child: const Text('Go to Decrement Screen')),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/provider.dart';

class DecrementScreen extends ConsumerWidget {
  const DecrementScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final title = ref.watch(titleProvider);
    final counter = ref.watch(counterProvider).counter;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
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
                ref.read(counterProvider).decrement();
              },
              child: const Text('Decrement'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  /// Calling the function that is commented out.
                  Navigator.pop(context);
                },
                child: const Text('Go back')),
          ],
        ),
      ),
    );
  }
}

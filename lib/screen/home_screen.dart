import 'package:flutter/material.dart';

import 'decrement_screen.dart';

///HomeScreen widget
class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    print(_counter);
  }

  Future<void> _goToDecrementScreen(BuildContext context) async {
    final newCounter = await Navigator.push<int>(
        context,
        MaterialPageRoute(
            builder: (context) => DecrementScreen(
                  counter: _counter,
                )));
    setState(() {
      _counter = newCounter ?? 0; // if null returned then set to 0
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 100),
            ),
            ElevatedButton(
              onPressed: () {
                _incrementCounter();
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
                _goToDecrementScreen(context);
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

import 'package:flutter/material.dart';

class DecrementScreen extends StatefulWidget {
  const DecrementScreen({super.key, required this.counter});

  final int counter;

  @override
  State<DecrementScreen> createState() => _DecrementScreenState();
}

class _DecrementScreenState extends State<DecrementScreen> {
  late int _counter;
  @override
  void initState() {
    super.initState();
    _counter = widget.counter;
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
    print(_counter);
  }

  void _back(BuildContext context) {
    Navigator.pop<int>(context, _counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Decrement Screen'),
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
                _decrementCounter();
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

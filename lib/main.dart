import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Demo',
        home: HomeScreen(),
      ),
    );
  }
}

///Link
///https://replit.com/languages/dart

///TODO Without Async
/// import 'dart:io';
// void main() {
//   print("Perform tasks:");
//   task1();
//   task2();
//   task3();
// }

// void task1(){
//     print("Task 1 complete");
// }

// void task2(){
//   sleep(Duration(seconds:10));
//    print("Task 2 complete");
// }

// void task3(){
//     print("Task 3 complete");
// }

///TODO With Async
// import 'dart:io';
// void main() {
//   print("Perform tasks:");
//   task1();
//   task2();
//   task3();
// }

// void task1(){
//     print("Task 1 complete");
// }

// Future<void> task2() async {
//   await Future.delayed(Duration(seconds:10),(){
//     print("Task 2 complete");
//   });
// }

// void task3(){
//     print("Task 3 complete");
// }

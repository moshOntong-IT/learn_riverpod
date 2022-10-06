import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/controller/counter_controller.dart';

final titleProvider = Provider<String>((ref) {
  return "Riverpod state";
});

final counterProvider = ChangeNotifierProvider((ref) {
  return CounterController();
});

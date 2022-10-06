import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'controller/count_controller.dart';

final counterControllerProvider = ChangeNotifierProvider(
  (ref) {
    return CountController();
  },
);

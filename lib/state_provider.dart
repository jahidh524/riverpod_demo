// import 'package:demo_river/todo_list_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final stateCounterProvider = StateProvider((ref) => 0);

// class StateCounter extends ChangeNotifier {
//   int _count = 0;

//   int get count => _count;

//   void increment() {
//     _count++;
//     notifyListeners();
//   }

//   void decrement() {
//     _count--;
//     notifyListeners();
//   }

//   void reset() {
//     _count = 0;
//     notifyListeners();
//   }
// }

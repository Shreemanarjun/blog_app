import 'package:blog_app/counter/controller/counter_state_pod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterNotifier extends Notifier<int> {
  @override
  int build() {
    return ref.watch(intialCounterValuePod);
  }

  void increment() {
    state = state + 1;
  }

  void decrement() => state = state - 1;
}

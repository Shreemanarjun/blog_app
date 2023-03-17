import 'package:blog_app/counter/counter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterNotifier', () {
    test('initial state is 0', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);
      expect(container.read(counterPod), equals(0));
    });

    test('emits [1] when increment is called', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);
      container.read(counterPod.notifier).increment();
      expect(container.read(counterPod), 1);
    });
    test('emits [-1] when decrement is called', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);
      container.read(counterPod.notifier).decrement();
      expect(container.read(counterPod), -1);
    });
  });
}

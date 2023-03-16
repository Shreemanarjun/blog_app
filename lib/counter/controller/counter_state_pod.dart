
import 'package:blog_app/counter/counter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterPod = NotifierProvider<CounterNotifier, int>(
  CounterNotifier.new,
);

final intialCounterValuePod = Provider((ref) => 0);

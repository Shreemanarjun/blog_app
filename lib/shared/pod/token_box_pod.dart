// ignore_for_file: strict_raw_type

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

final tokenBoxPod = Provider.autoDispose<Box>(
  (ref) => throw UnimplementedError('Token Box is not initialized'),
);

// ignore_for_file: strict_raw_type, cast_nullable_to_non_nullable, noop_primitive_operations, lines_longer_than_80_chars

import 'package:blog_app/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyProviderObserver extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    if (newValue is StateController) {
      final newv = newValue.state;
      final perviousv = (previousValue as StateController).state;
      talker.debug('Provider is: '
          '${provider.name ?? provider.runtimeType} \n'
          'previous value: $perviousv \n'
          'new value: $newv');
    } else if (newValue is AsyncValue) {
      final newv = newValue.value;
      final perviousv = (previousValue as AsyncValue).value;
      talker.debug('Provider is: '
          '${provider.name ?? provider.runtimeType} \n'
          'previous value: $perviousv \n'
          'new value: $newv');
    } else {
      talker.debug('Provider is: '
          '${provider.name ?? provider.runtimeType} \n'
          'previous value: ${previousValue.toString()}\n'
          'new value: ${newValue.toString()}');
    }
    super.didUpdateProvider(provider, previousValue, newValue, container);
  }
}

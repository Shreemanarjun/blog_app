// ignore_for_file: noop_primitive_operations, strict_raw_type, cast_nullable_to_non_nullable, lines_longer_than_80_chars

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:talker/talker.dart';

class MyProviderObserver extends ProviderObserver {
  MyProviderObserver({required this.talker}) : super();
  final Talker talker;

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
      talker.log('Provider is: '
          '${provider.name ?? provider.runtimeType} \n'
          'previous value: $perviousv \n'
          'new value: $newv');
    } else if ((newValue is AsyncValue?) && (previousValue is AsyncValue?)) {
      if (previousValue != null) {
        final newv = newValue?.valueOrNull;
        final previousv = previousValue.valueOrNull;
        talker.log('Provider is: '
            '${provider.name ?? provider.runtimeType} \n'
            'previous value: $previousv \n'
            'new value: $newv');
      } else {
        talker.log('Provider is: '
            '${provider.name ?? provider.runtimeType} \n'
            'previous value: null \n'
            'new value: ${newValue?.value}');
      }
    } else {
      talker.log('Provider is: '
          '${provider.name ?? provider.runtimeType} \n'
          'previous value: ${previousValue.toString()}\n'
          'new value: ${newValue.toString()}');
    }
    super.didUpdateProvider(provider, previousValue, newValue, container);
  }
}

import 'dart:async';
import 'dart:developer';
import 'package:blog_app/logger.dart';
import 'package:blog_app/observer.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };
  await runZonedGuarded(
    () async => runApp(
      ProviderScope(
        observers: [
          if (kDebugMode) MyProviderObserver(talker: talker),
        ],
        child: await builder(),
      ),
    ),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}

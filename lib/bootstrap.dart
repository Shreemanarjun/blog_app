// ignore_for_file: inference_failure_on_function_invocation,
// avoid_dynamic_calls

import 'dart:async';
import 'dart:developer';
import 'package:blog_app/logger.dart';
import 'package:blog_app/observer.dart';
import 'package:blog_app/shared/pod/token_box_pod.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_state_notifier/hydrated_state_notifier.dart';
import 'package:hydrated_state_notifier_hive/hydrated_state_notifier_hive.dart';
import 'package:path_provider/path_provider.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  // FlutterError.onError = (details) {
  //   log(details.exceptionAsString(), stackTrace: details.stack);
  // };

  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Hive.initFlutter();
      final tokenbox = await Hive.openBox('tokens');
      HydratedStorage.storage = await HiveHydratedStorage.build(
        storageDirectoryPath:
            kIsWeb ? '' : (await getTemporaryDirectory()).path,
      );
      runApp(
        ProviderScope(
          overrides: [
            tokenBoxPod.overrideWithValue(tokenbox),
          ],
          observers: [
            if (kDebugMode) MyProviderObserver(talker: talker),
          ],
          child: await builder(),
        ),
      );
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}

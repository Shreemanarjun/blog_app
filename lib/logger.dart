import 'dart:io';

import 'package:flutter/material.dart';
import 'package:talker/talker.dart';

final talker = Talker(
  logger: TalkerLogger(
    output: debugPrint, // add this to avoid this issue.
    settings: TalkerLoggerSettings(
      // disable colors in iOS due to https://github.com/flutter/flutter/issues/20663
      enableColors: !Platform.isIOS,
    ),
  ),
);

import 'dart:async';

import 'package:flutter/services.dart';

class Sleepy {
  static const MethodChannel _channel =
      const MethodChannel('sleepy');

  static Future<String> get sleep async {
    String greeting = await _channel.invokeMethod('sleep');
    return greeting;
  }
}

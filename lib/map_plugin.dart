import 'dart:async';

import 'package:flutter/services.dart';

class MapPlugin {
  static const MethodChannel _channel =
      const MethodChannel('map_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

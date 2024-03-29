import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:map_plugin/map_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('map_plugin');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await MapPlugin.platformVersion, '42');
  });
}

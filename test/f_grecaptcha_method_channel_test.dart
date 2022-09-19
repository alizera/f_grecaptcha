import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:f_grecaptcha/f_grecaptcha_method_channel.dart';

void main() {
  MethodChannelFGrecaptcha platform = MethodChannelFGrecaptcha();
  const MethodChannel channel = MethodChannel('f_grecaptcha');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}

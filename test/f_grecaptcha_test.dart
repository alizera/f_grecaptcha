import 'package:flutter_test/flutter_test.dart';
import 'package:f_grecaptcha/f_grecaptcha.dart';
import 'package:f_grecaptcha/f_grecaptcha_platform_interface.dart';
import 'package:f_grecaptcha/f_grecaptcha_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFGrecaptchaPlatform
    with MockPlatformInterfaceMixin
    implements FGrecaptchaPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FGrecaptchaPlatform initialPlatform = FGrecaptchaPlatform.instance;

  test('$MethodChannelFGrecaptcha is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFGrecaptcha>());
  });

  test('getPlatformVersion', () async {
    FGrecaptcha fGrecaptchaPlugin = FGrecaptcha();
    MockFGrecaptchaPlatform fakePlatform = MockFGrecaptchaPlatform();
    FGrecaptchaPlatform.instance = fakePlatform;

    expect(await fGrecaptchaPlugin.getPlatformVersion(), '42');
  });
}

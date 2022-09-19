import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'f_grecaptcha_platform_interface.dart';

/// An implementation of [FGrecaptchaPlatform] that uses method channels.
class MethodChannelFGrecaptcha extends FGrecaptchaPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('f_grecaptcha');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

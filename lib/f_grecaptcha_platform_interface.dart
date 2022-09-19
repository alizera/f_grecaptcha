import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'f_grecaptcha_method_channel.dart';

abstract class FGrecaptchaPlatform extends PlatformInterface {
  /// Constructs a FGrecaptchaPlatform.
  FGrecaptchaPlatform() : super(token: _token);

  static final Object _token = Object();

  static FGrecaptchaPlatform _instance = MethodChannelFGrecaptcha();

  /// The default instance of [FGrecaptchaPlatform] to use.
  ///
  /// Defaults to [MethodChannelFGrecaptcha].
  static FGrecaptchaPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FGrecaptchaPlatform] when
  /// they register themselves.
  static set instance(FGrecaptchaPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

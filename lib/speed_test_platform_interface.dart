import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'speed_test_method_channel.dart';

abstract class SpeedTestPlatform extends PlatformInterface {
  /// Constructs a SpeedTestPlatform.
  SpeedTestPlatform() : super(token: _token);

  static final Object _token = Object();

  static SpeedTestPlatform _instance = MethodChannelSpeedTest();

  /// The default instance of [SpeedTestPlatform] to use.
  ///
  /// Defaults to [MethodChannelSpeedTest].
  static SpeedTestPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SpeedTestPlatform] when
  /// they register themselves.
  static set instance(SpeedTestPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

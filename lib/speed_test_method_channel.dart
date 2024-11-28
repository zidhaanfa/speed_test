import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'speed_test_platform_interface.dart';

/// An implementation of [SpeedTestPlatform] that uses method channels.
class MethodChannelSpeedTest extends SpeedTestPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('speed_test');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

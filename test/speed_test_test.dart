/*class MockSpeedTestPlatform
    with MockPlatformInterfaceMixin
    implements SpeedTestPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SpeedTestPlatform initialPlatform = SpeedTestPlatform.instance;

  test('$MethodChannelSpeedTest is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSpeedTest>());
  });

  test('getPlatformVersion', () async {
    SpeedTest SpeedTestPlugin = SpeedTest();
    MockSpeedTestPlatform fakePlatform = MockSpeedTestPlatform();
    SpeedTestPlatform.instance = fakePlatform;
  
    expect(await SpeedTestPlugin.getPlatformVersion(), '42');
  });
}*/

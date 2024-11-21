import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_notification_utilities/flutter_notification_utilities.dart';
import 'package:flutter_notification_utilities/flutter_notification_utilities_platform_interface.dart';
import 'package:flutter_notification_utilities/flutter_notification_utilities_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterNotificationUtilitiesPlatform
    with MockPlatformInterfaceMixin
    implements FlutterNotificationUtilitiesPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterNotificationUtilitiesPlatform initialPlatform = FlutterNotificationUtilitiesPlatform.instance;

  test('$MethodChannelFlutterNotificationUtilities is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterNotificationUtilities>());
  });

  test('getPlatformVersion', () async {
    FlutterNotificationUtilities flutterNotificationUtilitiesPlugin = FlutterNotificationUtilities();
    MockFlutterNotificationUtilitiesPlatform fakePlatform = MockFlutterNotificationUtilitiesPlatform();
    FlutterNotificationUtilitiesPlatform.instance = fakePlatform;

    expect(await flutterNotificationUtilitiesPlugin.getPlatformVersion(), '42');
  });
}

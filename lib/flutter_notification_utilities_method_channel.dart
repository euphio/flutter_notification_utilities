import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_notification_utilities_platform_interface.dart';

/// An implementation of [FlutterNotificationUtilitiesPlatform] that uses method channels.
class MethodChannelFlutterNotificationUtilities extends FlutterNotificationUtilitiesPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_notification_utilities');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

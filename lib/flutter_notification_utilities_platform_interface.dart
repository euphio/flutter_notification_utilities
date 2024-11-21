import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_notification_utilities_method_channel.dart';

abstract class FlutterNotificationUtilitiesPlatform extends PlatformInterface {
  /// Constructs a FlutterNotificationUtilitiesPlatform.
  FlutterNotificationUtilitiesPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterNotificationUtilitiesPlatform _instance = MethodChannelFlutterNotificationUtilities();

  /// The default instance of [FlutterNotificationUtilitiesPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterNotificationUtilities].
  static FlutterNotificationUtilitiesPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterNotificationUtilitiesPlatform] when
  /// they register themselves.
  static set instance(FlutterNotificationUtilitiesPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

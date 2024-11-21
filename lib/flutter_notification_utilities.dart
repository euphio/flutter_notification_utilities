
import 'flutter_notification_utilities_platform_interface.dart';

class FlutterNotificationUtilities {
  Future<String?> getPlatformVersion() {
    return FlutterNotificationUtilitiesPlatform.instance.getPlatformVersion();
  }
}

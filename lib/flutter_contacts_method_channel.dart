import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_contacts_platform_interface.dart';

/// An implementation of [FlutterContactsPlatform] that uses method channels.
class MethodChannelFlutterContacts extends FlutterContactsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_contacts');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

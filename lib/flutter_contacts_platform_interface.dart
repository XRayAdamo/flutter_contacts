import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_contacts_method_channel.dart';

abstract class FlutterContactsPlatform extends PlatformInterface {
  /// Constructs a FlutterContactsPlatform.
  FlutterContactsPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterContactsPlatform _instance = MethodChannelFlutterContacts();

  /// The default instance of [FlutterContactsPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterContacts].
  static FlutterContactsPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterContactsPlatform] when
  /// they register themselves.
  static set instance(FlutterContactsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

import Flutter

public class SwiftSimplePermissionsPlugin: NSObject, FlutterPlugin {
    var whenInUse = false
    var result: FlutterResult? = nil

    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "simple_permissions", binaryMessenger: registrar.messenger())
        let instance = SwiftSimplePermissionsPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        result(FlutterMethodNotImplemented)
    }
}

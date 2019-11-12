import Flutter
import UIKit
import AMapFoundationKit
import MAMapKit

public class SwiftMapPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "map_plugin", binaryMessenger: registrar.messenger())
    let instance = SwiftMapPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }
  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if call.method == "getSystemVersion" {
         result("iOS " + UIDevice.current.systemVersion)
    }
    if call.method == "showMapView" {
        let map = MAMapView.init()
        result(map)
    }
    if call.method == "mapApiKey" {
        let dic = call.arguments as! Dictionary<String, String>
        AMapServices.shared()?.apiKey = dic["apiKey"]
    }
   
  }
}

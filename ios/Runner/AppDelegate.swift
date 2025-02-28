import UIKit
import Flutter

@main
@objc class AppDelegate: FlutterAppDelegate {
  private let channelName = "com.example.native_alert"

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    let controller = window?.rootViewController as! FlutterViewController
    let channel = FlutterMethodChannel(name: channelName, binaryMessenger: controller.binaryMessenger)

    channel.setMethodCallHandler { (call, result) in
      if call.method == "showNativeAlert" {
        self.showNativeAlert()
        result(nil)
      } else {
        result(FlutterMethodNotImplemented)
      }
    }

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  private func showNativeAlert() {
    let alert = UIAlertController(title: "Native Alert", message: "This is a native alert from iOS!", preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    window?.rootViewController?.present(alert, animated: true, completion: nil)
  }
}

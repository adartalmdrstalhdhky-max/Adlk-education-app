import Cocoa
import FlutterMacOS

@NSApplicationMain
class AppDelegate: FlutterAppDelegate {
  override func applicationDidFinishLaunching(_ notification: Notification) {
    let flutterViewController = mainFlutterWindow?.contentViewController as? FlutterViewController
    // Plugin registrations are handled automatically by GeneratedPluginRegistrant
    GeneratedPluginRegistrant.register(with: flutterViewController)
    super.applicationDidFinishLaunching(notification)
  }
}

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    var preferencesController: NSWindowController?

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialise your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    @IBAction func showPreferences(_ sender: Any) {
        
        if (preferencesController == nil) {
            let storyboard = NSStoryboard(name: "Preferences", bundle: nil)
            preferencesController = storyboard.instantiateInitialController() as? NSWindowController
        }
        
        if (preferencesController != nil) {
            preferencesController!.showWindow(sender)
        }
    }
    
}

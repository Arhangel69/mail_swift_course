import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow()
        let navigationController = NavigationViewController(rootViewController: LoginViewController())
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        
        self.window = window
        return true
    }

}

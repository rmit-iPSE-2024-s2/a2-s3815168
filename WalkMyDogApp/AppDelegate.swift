import GoogleMaps


class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        GMSServices.provideAPIKey("AIzaSyBI_k6IOKMRg3wPeH-_3n2hozNGuQM2KI4")
        return true
    }
}

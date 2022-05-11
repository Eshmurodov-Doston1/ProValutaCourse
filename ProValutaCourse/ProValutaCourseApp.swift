import SwiftUI

@main
struct ProValutaCourseApp: App {
    let persistenceController = PersistenceController.shared
    
    @StateObject var defaultApp = Default()
    
    var body: some Scene {
        WindowGroup {
            HomeScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(defaultApp)
        }
    }
}

import SwiftUI

@main
struct FreaksApp: App {
    var body: some Scene {
        WindowGroup {
            MenuView()
                .accentColor(Color("SecondaryColor"))
        }
    }
}

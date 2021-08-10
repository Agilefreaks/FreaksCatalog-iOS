import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            FreaksView()
                .tabItem {
                    Label("Freaks", systemImage: "person.fill")
                }
            ProjectsView()
                .tabItem {
                    Label("Projects", systemImage: "square.stack.3d.up.fill")
                }
        }
        .accentColor(Color("AccentColor"))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

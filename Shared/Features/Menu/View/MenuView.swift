import SwiftUI

struct MenuView: View {
    @State private var selection = 2

    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(1)

            FreaksView()
                .tabItem {
                    Label("Freaks", systemImage: "person.3.fill")
                }
                .tag(2)

            ProjectsView()
                .tabItem {
                    Label("Projects", systemImage: "square.stack.3d.up.fill")
                }
                .tag(3)
        }
        .accentColor(Color("AccentColor"))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

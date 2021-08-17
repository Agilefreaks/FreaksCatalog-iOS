import SwiftUI

struct ProjectsView: View {
    var body: some View {
        NavigationView {
            Text("Projects")
                .modifier(NavbarTitle(title: "Projects"))
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectsView()
    }
}

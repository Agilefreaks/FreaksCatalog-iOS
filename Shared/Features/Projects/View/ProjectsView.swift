import SwiftUI

struct ProjectsView: View {
    var body: some View {
        NavigationView {
            Text("Projects")
                .modifier(NavbarTitle(title: "Projects"))
        }
    }
}

struct ProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectsView()
    }
}

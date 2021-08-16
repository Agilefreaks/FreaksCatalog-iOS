import SwiftUI

struct ProjectsView: View {
    init() {
        let coloredNavAppearance = UINavigationBarAppearance()
        coloredNavAppearance.titleTextAttributes = [.foregroundColor: UIColor(Color("SecondaryColor"))]
        coloredNavAppearance.backgroundColor = UIColor(Color("AccentColor"))

        UINavigationBar.appearance().standardAppearance = coloredNavAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance
    }

    var body: some View {
        NavigationView {
            Text("Projects")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Projects")
                            .fontWeight(.medium)
                            .font(.system(size: 24))
                            .foregroundColor(Color("SecondaryColor"))
                    }
                }
        }
    }
}

struct ProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectsView()
    }
}

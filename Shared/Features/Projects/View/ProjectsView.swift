import SwiftUI

struct ProjectsView: View {
    var viewModel = ProjectsViewModel()

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 40) {
                    ForEach(viewModel.projects) { project in
                        ProjectCardView(viewModel: ProjectCardViewModel(project: project), type: project.name)
                            .listRowSeparator(.hidden)
                            .modifier(NavbarTitle(title: "Projects"))
                            .padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 40))
                    }
                }
                .padding(.top, 20)
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectsView()
    }
}

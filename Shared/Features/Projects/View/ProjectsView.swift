import SwiftUI

struct ProjectsView: View {
    var viewModel = ProjectsViewModel()

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.projects) { project in
                        ProjectCardView(viewModel: ProjectCardViewModel(project: project), type: project.name)
                            .listRowSeparator(.hidden)
                            .modifier(NavbarTitle(title: "Projects"))
                            .padding(EdgeInsets(top: 0, leading: 40, bottom: 40, trailing: 40))
                    }
                }
                .padding(.top, 40)
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

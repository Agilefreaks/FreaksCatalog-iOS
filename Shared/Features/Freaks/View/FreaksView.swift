import SwiftUI

struct FreaksView: View {
    @StateObject var viewModel = FreaksViewModel()

    let columns = [GridItem(.adaptive(minimum: 160))]

    init() {
        let coloredNavAppearance = UINavigationBarAppearance()
        coloredNavAppearance.titleTextAttributes = [.foregroundColor: UIColor(Color("SecondaryColor"))]
        coloredNavAppearance.backgroundColor = UIColor(Color("AccentColor"))

        UINavigationBar.appearance().standardAppearance = coloredNavAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance
    }

    var body: some View {
        NavigationView {
            VStack {
                FilterButtonsView(preselectedTechnologies: viewModel.selectedTechnologies,
                                  preselectedProjects: viewModel.selectedProjects,
                                  onTechnologiesFilterApply: { skills in
                                      viewModel.setSelectedTechnologies(skills: skills)
                                      viewModel.filterFreaks()
                                  },
                                  onProjectsFilterApply: { projects in
                                      viewModel.setSelectedProjects(projects: projects)
                                      viewModel.filterFreaks()
                                  })

                ScrollView {
                    LazyVGrid(columns: columns, spacing: 5) {
                        ForEach(viewModel.freaks) { freak in
                            NavigationLink(destination: FreakDetailsView(viewModel: FreakDetailsViewModel(freak: freak))) {
                                ListItemView(viewModel: ListItemViewModel(freak: freak))
                            }
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 5)
                }
            }
            .modifier(NavbarTitle(title: "Freaks"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FreaksView()
    }
}

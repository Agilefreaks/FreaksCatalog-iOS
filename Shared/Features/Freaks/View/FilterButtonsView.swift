import SwiftUI

struct FilterButtonsView: View {
    @StateObject var viewModel = FilterButtonsViewModel()
    @State var showSkillsView = false
    @State var showProjectsView = false

    var preselectedSkills: [Filterable]
    var preselectedProjects: [Filterable]

    var onSkillsFilterApply: ([Filterable]) -> Void
    var onProjectsFilterApply: ([Filterable]) -> Void

    var body: some View {
        HStack(spacing: 0) {
            Button(viewModel.getSkillsTitle()) {
                showSkillsView.toggle()
            }
            .frame(maxWidth: .infinity)
            .frame(height: 60)
            .sheet(isPresented: $showSkillsView) {
                FilterView(viewModel: FilterViewModel(filterType: .skill, preselectedItems: preselectedSkills),
                           showSkillsView: $showSkillsView,
                           showProjectsView: $showProjectsView,
                           title: "SKILLS") { items in
                    viewModel.setSkillsCounter(counter: items.count)
                    onSkillsFilterApply(items)
                }
            }

            Rectangle()
                .frame(width: 3, height: 60)

            Button(viewModel.getProjectsTitle()) {
                showProjectsView.toggle()
            }
            .frame(maxWidth: .infinity)
            .frame(height: 60)
            .sheet(isPresented: $showProjectsView) {
                FilterView(viewModel: FilterViewModel(filterType: .project, preselectedItems: preselectedProjects),
                           showSkillsView: $showSkillsView,
                           showProjectsView: $showProjectsView,
                           title: "PROJECTS") { items in
                    viewModel.setProjectsCounter(counter: items.count)
                    onProjectsFilterApply(items)
                }
            }
        }
        .foregroundColor(Color("SecondaryColor"))
        .font(.title3)
        .background(Color("AccentColor"))
        .border(Color("SecondaryColor"), width: 3)
    }
}

struct FreaksButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        FilterButtonsView(preselectedSkills: [],
                          preselectedProjects: []) { _ in
        } onProjectsFilterApply: { _ in
        }
    }
}

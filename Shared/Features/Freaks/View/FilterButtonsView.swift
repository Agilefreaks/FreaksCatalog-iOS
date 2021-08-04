import SwiftUI

struct FilterButtonsView: View {
    @ObservedObject var viewModel: FilterViewModel
    @State var showSkillsView = false
    @State var showProjectsView = false

    var body: some View {
        HStack(spacing: 0) {
            Button(viewModel.filterCounter) {
                self.showSkillsView.toggle()
            }
            .frame(maxWidth: .infinity)
            .frame(height: 60)
            .sheet(isPresented: $showSkillsView) {
                FilterView(viewModel: viewModel, showSkillsView: $showSkillsView, showProjectsView: $showProjectsView, filterType: .skill)
            }

            Rectangle()
                .frame(width: 3, height: 60)

            Button("Projects") {
                showProjectsView.toggle()
            }
            .frame(maxWidth: .infinity)
            .frame(height: 60)
            .sheet(isPresented: $showProjectsView) {
                FilterView(viewModel: viewModel, showSkillsView: $showSkillsView, showProjectsView: $showProjectsView, filterType: .project)
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
        FilterButtonsView(viewModel: FilterViewModel())
    }
}

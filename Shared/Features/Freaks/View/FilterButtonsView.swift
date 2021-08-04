import SwiftUI

struct FilterButtonsView: View {
    @ObservedObject var viewModel: FreaksViewModel
    @State var showSkillsView = false

    var body: some View {
        HStack(spacing: 0) {
            if !viewModel.skillSelections.isEmpty {
                Button("Skills (\(viewModel.counter))") {
                    self.showSkillsView.toggle()
                    print("skills")
                }
                .frame(maxWidth: .infinity)
                .frame(height: 60)
                .sheet(isPresented: $showSkillsView) {
                    SkillsView(viewModel: viewModel, showSkillsView: $showSkillsView)
                }
            } else {
                Button("Skills") {
                    self.showSkillsView.toggle()
                    print("skills")
                }
                .frame(maxWidth: .infinity)
                .frame(height: 60)
                .sheet(isPresented: $showSkillsView) {
                    SkillsView(viewModel: viewModel, showSkillsView: $showSkillsView)
                }
            }

            Rectangle()
                .frame(width: 3, height: 60)

            if !viewModel.skillSelections.isEmpty {
                Button("Projects(\(viewModel.counter)") {
                    print("projects")
                }
                .frame(maxWidth: .infinity)
                .frame(height: 60)
            } else {
                Button("Projects") {
                    print("projects")
                }
                .frame(maxWidth: .infinity)
                .frame(height: 60)
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
        FilterButtonsView(viewModel: FreaksViewModel())
    }
}

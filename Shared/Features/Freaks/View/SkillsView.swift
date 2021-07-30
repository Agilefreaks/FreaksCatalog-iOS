import SwiftUI

struct SkillsView: View {
    @ObservedObject var viewModel = FreaksViewModel()
    @Binding var showSkillsView: Bool

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.skills, id: \.self) { skill in
                    MultipleSelectionRow(skill: skill, isPressed: viewModel.isSkillSelected(skill: skill)) {
                        viewModel.setupSelectedSkills(skill: skill)
                    }
                }
            }
            .navigationBarTitle(Text("SKILLS"), displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                print("Reset skills")
            }) {
                Text("Reset")
                    .fontWeight(.medium)
                    .font(.system(size: 16))
            })
            .navigationBarItems(leading: Button(action: {
                print("Close skills sheet view")
                self.showSkillsView = false
            }) {
                Image(systemName: "xmark")
                    .font(.system(size: 16))
            })
        }
    }
}

struct SkillsView_Previews: PreviewProvider {
    static var previews: some View {
        SkillsView(showSkillsView: .constant(true))
    }
}

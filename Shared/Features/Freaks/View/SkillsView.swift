import SwiftUI

struct SkillsView: View {
    var viewModel = FreaksViewModel()
    @Binding var showSkillsView: Bool
    @State var skillSelections: [String] = []

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.skills, id: \.self) { skill in
                    MultipleSelectionRow(title: skill, isSelected: self.skillSelections.contains(skill)) {
                        if self.skillSelections.contains(skill) {
                            self.skillSelections.removeAll(where: { $0 == skill })
                        } else {
                            self.skillSelections.append(skill)
                        }
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

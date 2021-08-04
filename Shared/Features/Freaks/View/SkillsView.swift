import SwiftUI

struct SkillsView: View {
    @ObservedObject var viewModel: FreaksViewModel
    @Binding var showSkillsView: Bool

    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(viewModel.skills, id: \.self) { skill in
                        MultipleSelectionRow(viewModel: viewModel, skill: skill, isSelected: viewModel.isSkillSelected(skill: skill)) {
                            viewModel.setupSelectedSkills(skill: skill)
                        }
                    }
                }

                Button(action: {
                    self.showSkillsView = false
                    self.viewModel.shouldFilterFreaks = true
                }, label: {
                    Text("Apply")
                })
                    .foregroundColor(Color("SecondaryColor"))
                    .frame(maxWidth: 150, maxHeight: 40)
                    .background(Color("AccentColor"))
                    .padding()
                    .font(.system(size: 18, weight: .bold, design: .default))
            }
            .navigationBarTitle(Text("SKILLS"), displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                viewModel.skillSelections.removeAll()
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
        SkillsView(viewModel: FreaksViewModel(), showSkillsView: .constant(true))
    }
}

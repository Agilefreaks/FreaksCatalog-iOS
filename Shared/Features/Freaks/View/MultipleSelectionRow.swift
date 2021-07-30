import SwiftUI

struct MultipleSelectionRow: View {
    @ObservedObject var viewModel = FreaksViewModel()
    var skill: Skill
    var isPressed: Bool
    var action: () -> Void

    var body: some View {
        Button(action: self.action) {
            HStack {
                Text(skill.name)
                    .foregroundColor(.black)

                if self.isPressed {
                    Spacer()
                    Image(systemName: "checkmark")
                        .foregroundColor(Color("AccentColor"))
                }
            }
        }
    }
}

import SwiftUI

struct MultipleSelectionRow: View {
    var name: String
    var isSelected: Bool
    var action: () -> Void

    var body: some View {
        Button(action: self.action) {
            HStack {
                Text(name)
                    .foregroundColor(.black)

                if self.isSelected {
                    Spacer()
                    Image(systemName: "checkmark")
                        .foregroundColor(Color("AccentColor"))
                }
            }
        }
    }
}

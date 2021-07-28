import SwiftUI

struct MultipleSelectionRow: View {
    var title: String
    var isSelected: Bool
    var action: () -> Void

    var body: some View {
        Button(action: self.action) {
            HStack {
                Text(self.title)
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

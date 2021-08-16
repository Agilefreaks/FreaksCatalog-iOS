import SwiftUI

struct NavbarTitle: ViewModifier {
    var title: String

    func body(content: Content) -> some View {
        content
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text(title)
                        .fontWeight(.medium)
                        .font(.system(size: 24))
                        .foregroundColor(Color("SecondaryColor"))
                }
            }
    }
}

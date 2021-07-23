import SwiftUI

struct FilterButtonsView: View {
    var body: some View {
        HStack(spacing: 0) {
            Button("Skills") {
                print("skills")
            }
            .frame(maxWidth: .infinity)
            .frame(height: 60)
            
            Rectangle()
                .frame(width: 3, height: 60)

            Button("Projects") {
                print("projects")
            }
            .frame(maxWidth: .infinity)
            .frame(height: 60)
        }
        .foregroundColor(Color("SecondaryColor"))
        .font(.title3)
        .background(Color("AccentColor"))
        .border(Color("SecondaryColor"), width: 3)
    }
}

struct FreaksButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        FilterButtonsView()
    }
}

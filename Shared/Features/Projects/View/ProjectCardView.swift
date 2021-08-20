import SwiftUI

struct ProjectCardView: View {
    var type: String

    var body: some View {
        HStack {
            Spacer()

            Image("chad")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 128, maxHeight: 128)
                .cornerRadius(8)
                .padding()

            Spacer()

            Text(type)
                .font(.system(size: 18))

            Spacer()
        }
        .frame(maxWidth: 295, maxHeight: 147)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(.black, lineWidth: 2)
        )
    }
}

struct ProjectCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectCardView(type: "Streaming")
    }
}

import SwiftUI

struct ListItemView: View {
    var freak: Freak

    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: freak.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
            Text(freak.firstName)
        }
        .padding()
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView(freak: Freak(imageName: "person.crop.square", firstName: "Vlad", lastName: "Stanescu"))
    }
}

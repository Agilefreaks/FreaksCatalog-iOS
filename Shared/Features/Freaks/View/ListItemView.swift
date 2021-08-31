import Kingfisher
import SwiftUI

struct ListItemView: View {
    var viewModel: ListItemViewModel

    var body: some View {
        ZStack(alignment: .bottom) {
            KFImage(URL(string: viewModel.imageName))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 160, maxHeight: 160)
                .cornerRadius(10)
                .accessibility(identifier: "freakImage")

            Text(viewModel.firstName)
                .font(.system(size: 20, weight: .heavy, design: .default))
                .frame(maxWidth: 160, maxHeight: 70)
                .accessibility(identifier: "freakFirstName")
                .foregroundColor(Color("SecondaryColor"))
                .background(
                    LinearGradient(gradient: Gradient(colors: [.clear, .black.opacity(1)]), startPoint: .top, endPoint: .bottom))
        }
        .cornerRadius(10)
        .padding()
    }
}

// struct ListItemView_Previews: PreviewProvider {
//    static var viewModel = ListItemViewModel(freak: Freak(imageName: "test1", firstName: "Vlad", lastName: "Stanescu", description: "Lorem ipsum", skills: [Skill(id: "0", name: "iOS")], projects: [Project(id: "0", name: "Epix", description: "Streaming service")], role: "iOS Developer", level: "Senior", norm: "Fulltime", id: "0"))
//
//    static var previews: some View {
//        ListItemView(viewModel: viewModel)
//    }
// }

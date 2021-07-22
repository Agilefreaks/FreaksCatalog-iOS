import SwiftUI

struct ListItemView: View {
    var viewModel: ListItemViewModel

    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: viewModel.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .accessibility(identifier: "freakImage")
            Text(viewModel.fullName)
                .accessibility(identifier: "freakFullName")
        }
        .padding()
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var viewModel = ListItemViewModel(freak: Freak(imageName: "", firstName: "Vlad", lastName: "Militaru"))

    static var previews: some View {
        ListItemView(viewModel: viewModel)
    }
}

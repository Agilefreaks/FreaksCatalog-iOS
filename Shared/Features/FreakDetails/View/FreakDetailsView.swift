import SwiftUI

struct FreakDetailsView: View {
    var viewModel: FreakDetailsViewModel

    var body: some View {
        Text(viewModel.fullName)
    }
}

struct FreakDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FreakDetailsView(viewModel: FreakDetailsViewModel(freak: Freak(imageName: "", firstName: "Vlad", lastName: "Militaru")))
    }
}

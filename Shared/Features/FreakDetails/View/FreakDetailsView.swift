import SwiftUI

struct FreakDetailsView: View {
    @Environment(\.presentationMode) var presentationMode
    var viewModel: FreakDetailsViewModel

    var body: some View {
        Text(viewModel.fullName)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: { self.presentationMode.wrappedValue.dismiss() }) {
                HStack {
                    Image(systemName: "chevron.left")
                    Text(viewModel.fullName)
                }
            })
    }
}

struct FreakDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FreakDetailsView(viewModel: FreakDetailsViewModel(freak: Freak(imageName: "test1", firstName: "Vlad", lastName: "Militaru", id: 10)))
    }
}

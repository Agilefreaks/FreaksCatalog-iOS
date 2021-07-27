import SwiftUI

struct FreakDetailsView: View {
    @Environment(\.presentationMode) var presentationMode
    var viewModel: FreakDetailsViewModel

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("AccentColor"))
                .frame(maxWidth: 300, maxHeight: 400, alignment: .center)

            VStack {
                Image(viewModel.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: 160, maxHeight: 160)
                    .cornerRadius(10)
                    .accessibility(identifier: "freakImage")
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
    }
}

struct FreakDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FreakDetailsView(viewModel: FreakDetailsViewModel(freak: Freak(imageName: "test1", firstName: "Vlad", lastName: "Stanescu", description: "Lorem ipsum", skills: ["iOS"], projects: ["Epix"], role: "iOS Developer", level: "Senior", norm: "Fulltime", id: 0)))
    }
}

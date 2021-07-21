import SwiftUI

struct FreaksView: View {
    var viewModel = FreaksViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.freaks, id: \.firstName) { freak in
                NavigationLink(destination: FreakDetailsView(viewModel: FreakDetailsViewModel(freak: freak))) {
                    ListItemView(viewModel: ListItemViewModel(freak: freak))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FreaksView()
    }
}

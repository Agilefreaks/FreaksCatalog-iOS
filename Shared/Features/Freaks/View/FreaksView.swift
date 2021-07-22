import SwiftUI

struct FreaksView: View {
    var viewModel = FreaksViewModel()

    init() {
        let coloredNavAppearance = UINavigationBarAppearance()
        coloredNavAppearance.titleTextAttributes = [.foregroundColor: UIColor(Color("SecondaryColor"))]
        coloredNavAppearance.backgroundColor = UIColor(Color("AccentColor"))

        UINavigationBar.appearance().standardAppearance = coloredNavAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance
    }

    var body: some View {
        NavigationView {
            List(viewModel.freaks) { freak in
                NavigationLink(destination: FreakDetailsView(viewModel: FreakDetailsViewModel(freak: freak))) {
                    ListItemView(viewModel: ListItemViewModel(freak: freak))
                }
            }
            .navigationBarTitle("Freaks", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FreaksView()
    }
}

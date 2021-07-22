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
            VStack(spacing: 0) {
                HStack {
                    Spacer()
                    Button("Skills") {
                        print("skills")
                    }
                    Spacer()
                    Button("Projects") {
                        print("projects")
                    }
                    Spacer()
                }
                .frame(height: 60)
                .foregroundColor(.white)
                .font(.title3)
                .background(Color("AccentColor"))
                .border(Color("SecondaryColor"), width: 6)

                List(viewModel.freaks, id: \.firstName) { freak in
                    NavigationLink(destination: FreakDetailsView(viewModel: FreakDetailsViewModel(freak: freak))) {
                        ListItemView(viewModel: ListItemViewModel(freak: freak))
                    }
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

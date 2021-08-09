import SwiftUI

struct FreaksView: View {
    @StateObject var viewModel = FreaksViewModel()

    let columns = [GridItem(.adaptive(minimum: 160))]

    init() {
        let coloredNavAppearance = UINavigationBarAppearance()
        coloredNavAppearance.titleTextAttributes = [.foregroundColor: UIColor(Color("SecondaryColor"))]
        coloredNavAppearance.backgroundColor = UIColor(Color("AccentColor"))

        UINavigationBar.appearance().standardAppearance = coloredNavAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance
    }

    var body: some View {
        NavigationView {
            VStack {
                FilterButtonsView(onSkillsFilterApply: { items in print(items) },
                                  onProjectsFilterApply: { items in print(items) })

                ScrollView {
                    LazyVGrid(columns: columns, spacing: 5) {
                        ForEach(viewModel.freaks) { freak in
                            NavigationLink(destination: FreakDetailsView(viewModel: FreakDetailsViewModel(freak: freak))) {
                                ListItemView(viewModel: ListItemViewModel(freak: freak))
                            }
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 5)
                }
            }
            .onAppear {
                viewModel.getFreaks()
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Freaks")
                        .fontWeight(.medium)
                        .font(.system(size: 24))
                        .foregroundColor(Color("SecondaryColor"))
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

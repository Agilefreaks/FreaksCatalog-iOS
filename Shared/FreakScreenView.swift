import SwiftUI

struct FreakScreenView: View {
    var names = ["Alin", "Doru", "Raluca", "Mihai", "Vlad"]

    var body: some View {
        NavigationView {
            List(names, id: \.self) { name in
                Text(name)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FreakScreenView()
    }
}

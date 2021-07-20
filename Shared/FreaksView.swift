import SwiftUI

struct FreaksView: View {
    var freaks: [Freak] = [
        Freak(imageName: "person.crop.square", firstName: "Vlad", lastName: "Stanescu"),
        Freak(imageName: "person.crop.square", firstName: "Mihai", lastName: "Pantiru"),
        Freak(imageName: "person.crop.square", firstName: "Raluca", lastName: "Ionescu"),
    ]

    var body: some View {
        NavigationView {
            List(freaks, id: \.firstName) { freak in
                Text(freak.firstName)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FreaksView()
    }
}

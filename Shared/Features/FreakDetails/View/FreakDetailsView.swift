import SwiftUI

struct FreakDetailsView: View {
    @Environment(\.presentationMode) var presentationMode
    var viewModel: FreakDetailsViewModel
    // let freak = Bundle.main.decode([Freak].self, from: "MockData.json")

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("AccentColor"))
                .ignoresSafeArea()
                .frame(maxWidth: 350, maxHeight: 500, alignment: .bottom)
                .cornerRadius(10)

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

                Text(viewModel.description)
                    .padding()

                VStack(alignment: .leading, spacing: 2) {
                    HStack {
                        Text("Skills: ")
                        ForEach(viewModel.skills, id: \.self) { skill in
                            Text(skill)
                        }
                    }

                    HStack {
                        Text("Projects: ")
                        ForEach(viewModel.projects, id: \.self) { project in
                            Text(project)
                        }
                    }

                    HStack {
                        Text("Level: ")
                        Text(viewModel.level)
                    }
                }
            }

            .frame(maxWidth: 350, maxHeight: 650, alignment: .top)
        }
    }
}

struct FreakDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FreakDetailsView(viewModel: FreakDetailsViewModel(freak: Freak(imageName: "test1", firstName: "Vlad", lastName: "Stanescu", description: "Lorem ipsum", skills: ["iOS"], projects: ["Epix"], role: "iOS Developer", level: "Senior", norm: "Fulltime", id: 0)))
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}

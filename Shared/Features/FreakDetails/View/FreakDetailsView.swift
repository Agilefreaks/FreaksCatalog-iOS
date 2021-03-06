import Kingfisher
import SwiftUI

struct FreakDetailsView: View {
    @Environment(\.presentationMode) var presentationMode
    var viewModel: FreakDetailsViewModel

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("AccentColor"))
                .ignoresSafeArea()
                .frame(maxWidth: 350, maxHeight: 500, alignment: .bottom)
                .cornerRadius(10)

            VStack {
                KFImage(URL(string: viewModel.imageName))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: 160, maxHeight: 160)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("SecondaryColor"), lineWidth: 2)
                    )
                    .accessibility(identifier: "freakImage")

                Text(viewModel.fullName)
                    .font(.system(size: 18, weight: .bold, design: .default))
                    .padding()

                Text(viewModel.description)
                    .font(.system(size: 16, weight: .medium, design: .default))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()

                VStack(alignment: .leading, spacing: 15) {
                    HStack {
                        Text("Skills: ")
                        ForEach(viewModel.technologies) { technology in
                            Text(technology.name)
                        }
                    }

                    HStack {
                        Text("Projects: ")
                        ForEach(viewModel.projects) { project in
                            Text(project.name)
                        }
                    }

                    HStack {
                        Text("Level: ")
                        Text(viewModel.level)
                    }
                }

                .foregroundColor(Color("SecondaryColor"))
                .font(.system(size: 18, weight: .medium, design: .default))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 40)
            }
            .frame(maxWidth: 350, maxHeight: 650, alignment: .top)
            .foregroundColor(Color("SecondaryColor"))
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action: { self.presentationMode.wrappedValue.dismiss() }) {
            HStack {
                Image(systemName: "chevron.left")
                Text(viewModel.fullName)
            }
            .foregroundColor(Color("SecondaryColor"))
        })
    }
}

struct FreakDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FreakDetailsView(viewModel: FreakDetailsViewModel(freak: Freak(imageName: "test1", firstName: "Vlad", lastName: "Militaru", description: "Lorem ipsum", skills: [Skill(id: "0", name: "iOS")], projects: [Project(id: "0", name: "Epix", description: "Streaming service", technologies: [Technology(id: "1", name: "Mihai", description: "descriere")], imageUrl: "imagine")], technologies: [Technology(id: "1", name: "Mihai", description: "descriere")], role: "iOS Developer", level: "Senior", norm: "Fulltime", id: "0")))
    }
}

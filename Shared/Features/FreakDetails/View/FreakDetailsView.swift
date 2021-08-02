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
                Image(viewModel.imageName)
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
                        ForEach(viewModel.skills, id: \.self) { skill in
                            Text(skill.name)
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
        })
    }
}

struct FreakDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FreakDetailsView(viewModel: FreakDetailsViewModel(freak: Freak(imageName: "test1", firstName: "Vlad", lastName: "Stanescu", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vitae egestas enim. Ut vel orci interdum, egestas orci id, molestie urna. Phasellus sit amet ipsum nec urna efficitur dapibus a sit amet nunc.", skills: [Skill(id: 0, name: "iOS")], projects: ["Epix"], role: "iOS Developer", level: "Senior", norm: "Fulltime", id: 0)))
    }
}

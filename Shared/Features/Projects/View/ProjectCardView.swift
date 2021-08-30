import SwiftUI

struct ProjectCardView: View {
    var viewModel: ProjectCardViewModel
    var type: String

    var body: some View {
        HStack {
            Image(viewModel.imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 128, maxHeight: 128)
                .cornerRadius(8)
                .padding()

            Spacer()

            Text(type)
                .font(.system(size: 18))

            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: 147)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(.black, lineWidth: 2)
        )
    }
}

struct ProjectCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectCardView(viewModel: ProjectCardViewModel(project: Project(id: 0, name: "Epix", description: "test", technologies: [Technology(id: 0, name: "iOS", description: "test")], imageUrl: "chad")), type: "Streaming")
    }
}

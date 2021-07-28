import SwiftUI

struct FilterButtonsView: View {
    @State var showSkillsView = false

    var body: some View {
        HStack(spacing: 0) {
            Button("Skills") {
                self.showSkillsView.toggle()
                print("skills")
            }
            .frame(maxWidth: .infinity)
            .frame(height: 60)
            .sheet(isPresented: $showSkillsView) {
                SkillsView(showSkillsView: $showSkillsView)
            }

            Rectangle()
                .frame(width: 3, height: 60)

            Button("Projects") {
                print("projects")
            }
            .frame(maxWidth: .infinity)
            .frame(height: 60)
        }
        .foregroundColor(Color("SecondaryColor"))
        .font(.title3)
        .background(Color("AccentColor"))
        .border(Color("SecondaryColor"), width: 3)
    }
}

struct FreaksButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        FilterButtonsView()
    }
}

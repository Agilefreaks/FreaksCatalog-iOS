//
//  SkillsView.swift
//  SkillsView
//
//  Created by Radu Moldovan on 27.07.2021.
//

import SwiftUI

struct SkillsView: View {
    var viewModel = FreaksViewModel()
    @Binding var showSkillsView: Bool
    @State var selectedItem: Bool = false

    var body: some View {
        NavigationView {
            List(viewModel.skills, id: \.self) { skill in
                HStack {
                    Text(skill)
                        .foregroundColor(.black)
                    Spacer()

                    if self.selectedItem {
                        Image(systemName: "checkmark")
                            .foregroundColor(Color("AccentColor"))
                    }
                }
                .onTapGesture {
                    self.selectedItem = true
                }
            }
            .navigationBarTitle(Text("SKILLS"), displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                print("Reset skills")
            }) {
                Text("Reset")
                    .fontWeight(.medium)
                    .font(.system(size: 16))
            })
            .navigationBarItems(leading: Button(action: {
                print("Close skills sheet view")
                self.showSkillsView = false
            }) {
                Image(systemName: "xmark")
                    .font(.system(size: 16))
            })
        }
    }
}

struct SkillsView_Previews: PreviewProvider {
    static var previews: some View {
        SkillsView(showSkillsView: .constant(true))
    }
}

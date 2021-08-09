import SwiftUI

struct FilterView: View {
    @ObservedObject var viewModel: FilterViewModel
    var title: String

    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(viewModel.filterItems, id: \.id) { item in
                        MultipleSelectionRow(name: item.name, isSelected: viewModel.isSelected(item: item)) {
                            viewModel.didTap(on: item)
                        }
                    }
                }
                .onAppear {}

                Button(action: {
//                    self.showSkillsView = false
//                    self.viewModel.shouldFilterFreaks = true
                }, label: {
                    Text("Apply")
                })
                    .foregroundColor(Color("SecondaryColor"))
                    .frame(maxWidth: 150, maxHeight: 40)
                    .background(Color("AccentColor"))
                    .padding()
                    .font(.system(size: 18, weight: .bold, design: .default))
            }
            .navigationBarTitle(title)
            .navigationBarItems(trailing: Button(action: {
                // viewModel.resetSelected(filterType: filterType)
            }) {
                Text("Reset")
                    .fontWeight(.medium)
                    .font(.system(size: 16))
            })
            .navigationBarItems(leading: Button(action: {}) {
                Image(systemName: "xmark")
                    .font(.system(size: 16))
            })
        }
    }
}
